; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_pci.c_sclp_pci_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_pci.c_sclp_pci_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.zpci_report_error_header = type { i64, i32, i32 }
%struct.err_notify_sccb = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i8*, i8*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.sclp_req = type { i64, %struct.err_notify_sccb*, i32, i32, i32* }

@completion = common dso_local global i32 0, align 4
@sclp_pci_mutex = common dso_local global i32 0, align 4
@sclp_pci_event = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@EVTYP_ERRNOTIFY_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sclp_pci_callback = common dso_local global i32 0, align 4
@SCLP_CMDW_WRITE_EVENT_DATA = common dso_local global i32 0, align 4
@SCLP_REQ_FILLED = common dso_local global i64 0, align 8
@EVTYP_ERRNOTIFY = common dso_local global i32 0, align 4
@SCLP_ATYPE_PCI = common dso_local global i32 0, align 4
@SCLP_REQ_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"request failed (status=0x%02x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"request failed with response code 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_pci_report(%struct.zpci_report_error_header* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zpci_report_error_header*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.err_notify_sccb*, align 8
  %9 = alloca %struct.sclp_req, align 8
  %10 = alloca i32, align 4
  store %struct.zpci_report_error_header* %0, %struct.zpci_report_error_header** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @completion, align 4
  %12 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %11)
  %13 = load %struct.zpci_report_error_header*, %struct.zpci_report_error_header** %5, align 8
  %14 = call i32 @sclp_pci_check_report(%struct.zpci_report_error_header* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %148

19:                                               ; preds = %3
  %20 = call i32 @mutex_lock(i32* @sclp_pci_mutex)
  %21 = call i32 @sclp_register(%struct.TYPE_10__* @sclp_pci_event)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %145

25:                                               ; preds = %19
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sclp_pci_event, i32 0, i32 0), align 4
  %27 = load i32, i32* @EVTYP_ERRNOTIFY_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %143

33:                                               ; preds = %25
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load i32, i32* @GFP_DMA, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @get_zeroed_page(i32 %36)
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.err_notify_sccb*
  store %struct.err_notify_sccb* %39, %struct.err_notify_sccb** %8, align 8
  %40 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %41 = icmp ne %struct.err_notify_sccb* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %143

45:                                               ; preds = %33
  %46 = call i32 @memset(%struct.sclp_req* %9, i32 0, i32 32)
  %47 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %9, i32 0, i32 4
  store i32* @completion, i32** %47, align 8
  %48 = load i32, i32* @sclp_pci_callback, align 4
  %49 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %9, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @SCLP_CMDW_WRITE_EVENT_DATA, align 4
  %51 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %9, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load i64, i64* @SCLP_REQ_FILLED, align 8
  %53 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %9, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %55 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %9, i32 0, i32 1
  store %struct.err_notify_sccb* %54, %struct.err_notify_sccb** %55, align 8
  %56 = load %struct.zpci_report_error_header*, %struct.zpci_report_error_header** %5, align 8
  %57 = getelementptr inbounds %struct.zpci_report_error_header, %struct.zpci_report_error_header* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 48, %58
  %60 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %61 = getelementptr inbounds %struct.err_notify_sccb, %struct.err_notify_sccb* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i64 %59, i64* %63, align 8
  %64 = load i32, i32* @EVTYP_ERRNOTIFY, align 4
  %65 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %66 = getelementptr inbounds %struct.err_notify_sccb, %struct.err_notify_sccb* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 8
  %69 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %70 = getelementptr inbounds %struct.err_notify_sccb, %struct.err_notify_sccb* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add i64 16, %73
  %75 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %76 = getelementptr inbounds %struct.err_notify_sccb, %struct.err_notify_sccb* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load %struct.zpci_report_error_header*, %struct.zpci_report_error_header** %5, align 8
  %79 = getelementptr inbounds %struct.zpci_report_error_header, %struct.zpci_report_error_header* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %82 = getelementptr inbounds %struct.err_notify_sccb, %struct.err_notify_sccb* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @SCLP_ATYPE_PCI, align 4
  %85 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %86 = getelementptr inbounds %struct.err_notify_sccb, %struct.err_notify_sccb* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %90 = getelementptr inbounds %struct.err_notify_sccb, %struct.err_notify_sccb* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i8* %88, i8** %91, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %94 = getelementptr inbounds %struct.err_notify_sccb, %struct.err_notify_sccb* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  store i8* %92, i8** %95, align 8
  %96 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %97 = getelementptr inbounds %struct.err_notify_sccb, %struct.err_notify_sccb* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.zpci_report_error_header*, %struct.zpci_report_error_header** %5, align 8
  %101 = getelementptr inbounds %struct.zpci_report_error_header, %struct.zpci_report_error_header* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.zpci_report_error_header*, %struct.zpci_report_error_header** %5, align 8
  %104 = getelementptr inbounds %struct.zpci_report_error_header, %struct.zpci_report_error_header* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @memcpy(i32 %99, i32 %102, i64 %105)
  %107 = call i32 @sclp_add_request(%struct.sclp_req* %9)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %45
  br label %139

111:                                              ; preds = %45
  %112 = call i32 @wait_for_completion(i32* @completion)
  %113 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %9, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SCLP_REQ_DONE, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %9, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %119)
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %10, align 4
  br label %139

123:                                              ; preds = %111
  %124 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %125 = getelementptr inbounds %struct.err_notify_sccb, %struct.err_notify_sccb* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 32
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %131 = getelementptr inbounds %struct.err_notify_sccb, %struct.err_notify_sccb* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  %136 = load i32, i32* @EIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %129, %123
  br label %139

139:                                              ; preds = %138, %117, %110
  %140 = load %struct.err_notify_sccb*, %struct.err_notify_sccb** %8, align 8
  %141 = ptrtoint %struct.err_notify_sccb* %140 to i64
  %142 = call i32 @free_page(i64 %141)
  br label %143

143:                                              ; preds = %139, %42, %30
  %144 = call i32 @sclp_unregister(%struct.TYPE_10__* @sclp_pci_event)
  br label %145

145:                                              ; preds = %143, %24
  %146 = call i32 @mutex_unlock(i32* @sclp_pci_mutex)
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %145, %17
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @sclp_pci_check_report(%struct.zpci_report_error_header*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sclp_register(%struct.TYPE_10__*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @memset(%struct.sclp_req*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @sclp_add_request(%struct.sclp_req*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @sclp_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
