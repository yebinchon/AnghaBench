; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_handle_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_handle_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, %struct.TYPE_2__*, %struct.device }
%struct.TYPE_2__ = type { i32, i32* }
%struct.device = type { i32 }
%struct.fw_rsc_hdr = type { i64 }

@RSC_LAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"rsc table is truncated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"rsc: type %d\0A\00", align 1
@RSC_VENDOR_START = common dso_local global i64 0, align 8
@RSC_VENDOR_END = common dso_local global i64 0, align 8
@RSC_HANDLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"unsupported vendor resource %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"unsupported resource %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, i32 (%struct.rproc*, i8*, i32, i32)**)* @rproc_handle_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_handle_resources(%struct.rproc* %0, i32 (%struct.rproc*, i8*, i32, i32)** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca i32 (%struct.rproc*, i8*, i32, i32)**, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32 (%struct.rproc*, i8*, i32, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fw_rsc_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store i32 (%struct.rproc*, i8*, i32, i32)** %1, i32 (%struct.rproc*, i8*, i32, i32)*** %5, align 8
  %14 = load i64, i64* @RSC_LAST, align 8
  %15 = load %struct.rproc*, %struct.rproc** %4, align 8
  %16 = getelementptr inbounds %struct.rproc, %struct.rproc* %15, i32 0, i32 2
  store %struct.device* %16, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.rproc*, %struct.rproc** %4, align 8
  %18 = getelementptr inbounds %struct.rproc, %struct.rproc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %152

22:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %147, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.rproc*, %struct.rproc** %4, align 8
  %26 = getelementptr inbounds %struct.rproc, %struct.rproc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %150

31:                                               ; preds = %23
  %32 = load %struct.rproc*, %struct.rproc** %4, align 8
  %33 = getelementptr inbounds %struct.rproc, %struct.rproc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.rproc*, %struct.rproc** %4, align 8
  %42 = getelementptr inbounds %struct.rproc, %struct.rproc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = bitcast %struct.TYPE_2__* %43 to i8*
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %44, i64 %46
  %48 = bitcast i8* %47 to %struct.fw_rsc_hdr*
  store %struct.fw_rsc_hdr* %48, %struct.fw_rsc_hdr** %11, align 8
  %49 = load %struct.rproc*, %struct.rproc** %4, align 8
  %50 = getelementptr inbounds %struct.rproc, %struct.rproc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = sub i64 %54, 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load %struct.fw_rsc_hdr*, %struct.fw_rsc_hdr** %11, align 8
  %58 = bitcast %struct.fw_rsc_hdr* %57 to i8*
  %59 = getelementptr i8, i8* %58, i64 8
  store i8* %59, i8** %13, align 8
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %31
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %152

67:                                               ; preds = %31
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load %struct.fw_rsc_hdr*, %struct.fw_rsc_hdr** %11, align 8
  %70 = getelementptr inbounds %struct.fw_rsc_hdr, %struct.fw_rsc_hdr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @dev_dbg(%struct.device* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load %struct.fw_rsc_hdr*, %struct.fw_rsc_hdr** %11, align 8
  %74 = getelementptr inbounds %struct.fw_rsc_hdr, %struct.fw_rsc_hdr* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RSC_VENDOR_START, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %67
  %79 = load %struct.fw_rsc_hdr*, %struct.fw_rsc_hdr** %11, align 8
  %80 = getelementptr inbounds %struct.fw_rsc_hdr, %struct.fw_rsc_hdr* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @RSC_VENDOR_END, align 8
  %83 = icmp ule i64 %81, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %78
  %85 = load %struct.rproc*, %struct.rproc** %4, align 8
  %86 = load %struct.fw_rsc_hdr*, %struct.fw_rsc_hdr** %11, align 8
  %87 = getelementptr inbounds %struct.fw_rsc_hdr, %struct.fw_rsc_hdr* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, 8
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @rproc_handle_rsc(%struct.rproc* %85, i64 %88, i8* %89, i32 %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @RSC_HANDLED, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  br label %147

100:                                              ; preds = %84
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %150

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = load %struct.fw_rsc_hdr*, %struct.fw_rsc_hdr** %11, align 8
  %108 = getelementptr inbounds %struct.fw_rsc_hdr, %struct.fw_rsc_hdr* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @dev_warn(%struct.device* %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %109)
  br label %147

111:                                              ; preds = %78, %67
  %112 = load %struct.fw_rsc_hdr*, %struct.fw_rsc_hdr** %11, align 8
  %113 = getelementptr inbounds %struct.fw_rsc_hdr, %struct.fw_rsc_hdr* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @RSC_LAST, align 8
  %116 = icmp uge i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = load %struct.fw_rsc_hdr*, %struct.fw_rsc_hdr** %11, align 8
  %120 = getelementptr inbounds %struct.fw_rsc_hdr, %struct.fw_rsc_hdr* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @dev_warn(%struct.device* %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %121)
  br label %147

123:                                              ; preds = %111
  %124 = load i32 (%struct.rproc*, i8*, i32, i32)**, i32 (%struct.rproc*, i8*, i32, i32)*** %5, align 8
  %125 = load %struct.fw_rsc_hdr*, %struct.fw_rsc_hdr** %11, align 8
  %126 = getelementptr inbounds %struct.fw_rsc_hdr, %struct.fw_rsc_hdr* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32 (%struct.rproc*, i8*, i32, i32)*, i32 (%struct.rproc*, i8*, i32, i32)** %124, i64 %127
  %129 = load i32 (%struct.rproc*, i8*, i32, i32)*, i32 (%struct.rproc*, i8*, i32, i32)** %128, align 8
  store i32 (%struct.rproc*, i8*, i32, i32)* %129, i32 (%struct.rproc*, i8*, i32, i32)** %7, align 8
  %130 = load i32 (%struct.rproc*, i8*, i32, i32)*, i32 (%struct.rproc*, i8*, i32, i32)** %7, align 8
  %131 = icmp ne i32 (%struct.rproc*, i8*, i32, i32)* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %123
  br label %147

133:                                              ; preds = %123
  %134 = load i32 (%struct.rproc*, i8*, i32, i32)*, i32 (%struct.rproc*, i8*, i32, i32)** %7, align 8
  %135 = load %struct.rproc*, %struct.rproc** %4, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, 8
  %140 = trunc i64 %139 to i32
  %141 = load i32, i32* %12, align 4
  %142 = call i32 %134(%struct.rproc* %135, i8* %136, i32 %140, i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  br label %150

146:                                              ; preds = %133
  br label %147

147:                                              ; preds = %146, %132, %117, %105, %99
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %23

150:                                              ; preds = %145, %103, %23
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %62, %21
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local i32 @rproc_handle_rsc(%struct.rproc*, i64, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
