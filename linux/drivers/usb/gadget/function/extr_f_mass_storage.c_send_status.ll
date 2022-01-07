; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_send_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_send_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { %struct.fsg_buffhd*, i32, i32, i64, i64, %struct.fsg_lun* }
%struct.fsg_buffhd = type { %struct.fsg_buffhd*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.fsg_lun = type { i64, i64 }
%struct.bulk_cs_wrap = type { i32, i8*, i32, i8* }

@US_BULK_STAT_OK = common dso_local global i32 0, align 4
@SS_NO_SENSE = common dso_local global i64 0, align 8
@SS_LOGICAL_UNIT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"sending phase-error status\0A\00", align 1
@US_BULK_STAT_PHASE = common dso_local global i32 0, align 4
@SS_INVALID_COMMAND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"sending command-failure status\0A\00", align 1
@US_BULK_STAT_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"  sense data: SK x%02x, ASC x%02x, ASCQ x%02x;  info x%x\0A\00", align 1
@US_BULK_CS_SIGN = common dso_local global i32 0, align 4
@US_BULK_CS_WRAP_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsg_common*)* @send_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_status(%struct.fsg_common* %0) #0 {
  %2 = alloca %struct.fsg_common*, align 8
  %3 = alloca %struct.fsg_lun*, align 8
  %4 = alloca %struct.fsg_buffhd*, align 8
  %5 = alloca %struct.bulk_cs_wrap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fsg_common* %0, %struct.fsg_common** %2, align 8
  %10 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %11 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %10, i32 0, i32 5
  %12 = load %struct.fsg_lun*, %struct.fsg_lun** %11, align 8
  store %struct.fsg_lun* %12, %struct.fsg_lun** %3, align 8
  %13 = load i32, i32* @US_BULK_STAT_OK, align 4
  store i32 %13, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %14 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %15 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %14, i32 0, i32 0
  %16 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %15, align 8
  store %struct.fsg_buffhd* %16, %struct.fsg_buffhd** %4, align 8
  %17 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %18 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %19 = call i32 @sleep_thread(%struct.fsg_common* %17, i32 0, %struct.fsg_buffhd* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %115

23:                                               ; preds = %1
  %24 = load %struct.fsg_lun*, %struct.fsg_lun** %3, align 8
  %25 = icmp ne %struct.fsg_lun* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.fsg_lun*, %struct.fsg_lun** %3, align 8
  %28 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.fsg_lun*, %struct.fsg_lun** %3, align 8
  %31 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  br label %43

33:                                               ; preds = %23
  %34 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %35 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @SS_NO_SENSE, align 8
  store i64 %39, i64* %8, align 8
  br label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @SS_LOGICAL_UNIT_NOT_SUPPORTED, align 8
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %45 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %50 = call i32 @DBG(%struct.fsg_common* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @US_BULK_STAT_PHASE, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i64, i64* @SS_INVALID_COMMAND, align 8
  store i64 %52, i64* %8, align 8
  br label %71

53:                                               ; preds = %43
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @SS_NO_SENSE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %59 = call i32 @DBG(%struct.fsg_common* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @US_BULK_STAT_FAIL, align 4
  store i32 %60, i32* %7, align 4
  %61 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @SK(i64 %62)
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @ASC(i64 %64)
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @ASCQ(i64 %66)
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @VDBG(%struct.fsg_common* %61, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %65, i32 %67, i64 %68)
  br label %70

70:                                               ; preds = %57, %53
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %73 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = bitcast i8* %75 to %struct.bulk_cs_wrap*
  store %struct.bulk_cs_wrap* %76, %struct.bulk_cs_wrap** %5, align 8
  %77 = load i32, i32* @US_BULK_CS_SIGN, align 4
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %5, align 8
  %80 = getelementptr inbounds %struct.bulk_cs_wrap, %struct.bulk_cs_wrap* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %82 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %5, align 8
  %85 = getelementptr inbounds %struct.bulk_cs_wrap, %struct.bulk_cs_wrap* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %87 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %5, align 8
  %91 = getelementptr inbounds %struct.bulk_cs_wrap, %struct.bulk_cs_wrap* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.bulk_cs_wrap*, %struct.bulk_cs_wrap** %5, align 8
  %94 = getelementptr inbounds %struct.bulk_cs_wrap, %struct.bulk_cs_wrap* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @US_BULK_CS_WRAP_LEN, align 4
  %96 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %97 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 %95, i32* %99, align 8
  %100 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %101 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %105 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %106 = call i32 @start_in_transfer(%struct.fsg_common* %104, %struct.fsg_buffhd* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %71
  br label %115

109:                                              ; preds = %71
  %110 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %111 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %110, i32 0, i32 0
  %112 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %111, align 8
  %113 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %114 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %113, i32 0, i32 0
  store %struct.fsg_buffhd* %112, %struct.fsg_buffhd** %114, align 8
  br label %115

115:                                              ; preds = %109, %108, %22
  ret void
}

declare dso_local i32 @sleep_thread(%struct.fsg_common*, i32, %struct.fsg_buffhd*) #1

declare dso_local i32 @DBG(%struct.fsg_common*, i8*) #1

declare dso_local i32 @VDBG(%struct.fsg_common*, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @SK(i64) #1

declare dso_local i32 @ASC(i64) #1

declare dso_local i32 @ASCQ(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @start_in_transfer(%struct.fsg_common*, %struct.fsg_buffhd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
