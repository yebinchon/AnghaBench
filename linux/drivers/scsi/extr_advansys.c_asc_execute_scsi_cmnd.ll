; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_asc_execute_scsi_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_asc_execute_scsi_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.asc_board = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.asc_scsi_q = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"scp 0x%p\0A\00", align 1
@build_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"adv_build_req ASC_NOERROR\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"adv_build_req ASC_BUSY\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"adv_build_req ASC_ERROR\0A\00", align 1
@exe_noerror = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"ExeScsiQueue() ASC_NOERROR\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ExeScsiQueue() ASC_BUSY\0A\00", align 1
@exe_busy = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"ExeScsiQueue() ASC_ERROR, err_code 0x%x\0A\00", align 1
@exe_error = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"ExeScsiQueue() unknown, err_code 0x%x\0A\00", align 1
@exe_unknown = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @asc_execute_scsi_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asc_execute_scsi_cmnd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.asc_board*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.asc_scsi_q, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.asc_board* @shost_priv(i32 %15)
  store %struct.asc_board* %16, %struct.asc_board** %6, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %17)
  %19 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %20 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %1
  %23 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %24 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %7, align 8
  %26 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = call i32 @asc_build_req(%struct.asc_board* %26, %struct.scsi_cmnd* %27, %struct.asc_scsi_q* %8)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 128
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @build_error, align 4
  %38 = call i32 @ASC_STATS(i32 %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %143

40:                                               ; preds = %22
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = call i32 @AscExeScsiQueue(%struct.TYPE_9__* %41, %struct.asc_scsi_q* %8)
  store i32 %42, i32* %4, align 4
  %43 = getelementptr inbounds %struct.asc_scsi_q, %struct.asc_scsi_q* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kfree(i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %5, align 4
  br label %77

49:                                               ; preds = %1
  %50 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %51 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %9, align 8
  %53 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %55 = call i32 @adv_build_req(%struct.asc_board* %53, %struct.scsi_cmnd* %54, i32** %10)
  switch i32 %55, label %61 [
    i32 128, label %56
    i32 130, label %58
    i32 129, label %60
  ]

56:                                               ; preds = %49
  %57 = call i32 (i32, i8*, ...) @ASC_DBG(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %70

58:                                               ; preds = %49
  %59 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 130, i32* %2, align 4
  br label %143

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %49, %60
  %62 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @build_error, align 4
  %69 = call i32 @ASC_STATS(i32 %67, i32 %68)
  store i32 129, i32* %2, align 4
  br label %143

70:                                               ; preds = %56
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @AdvExeScsiQueue(%struct.TYPE_10__* %71, i32* %72)
  store i32 %73, i32* %4, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %70, %40
  %78 = load i32, i32* %4, align 4
  switch i32 %78, label %124 [
    i32 128, label %79
    i32 130, label %99
    i32 129, label %108
  ]

79:                                               ; preds = %77
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %81 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @exe_noerror, align 4
  %86 = call i32 @ASC_STATS(i32 %84, i32 %85)
  %87 = load %struct.asc_board*, %struct.asc_board** %6, align 8
  %88 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %140

99:                                               ; preds = %77
  %100 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @exe_busy, align 4
  %107 = call i32 @ASC_STATS(i32 %105, i32 %106)
  br label %140

108:                                              ; preds = %77
  %109 = load i32, i32* @KERN_ERR, align 4
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @scmd_printk(i32 %109, %struct.scsi_cmnd* %110, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @exe_error, align 4
  %119 = call i32 @ASC_STATS(i32 %117, i32 %118)
  %120 = load i32, i32* @DID_ERROR, align 4
  %121 = call i8* @HOST_BYTE(i32 %120)
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %123 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  br label %140

124:                                              ; preds = %77
  %125 = load i32, i32* @KERN_ERR, align 4
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @scmd_printk(i32 %125, %struct.scsi_cmnd* %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %127)
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %130 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @exe_unknown, align 4
  %135 = call i32 @ASC_STATS(i32 %133, i32 %134)
  %136 = load i32, i32* @DID_ERROR, align 4
  %137 = call i8* @HOST_BYTE(i32 %136)
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %139 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %124, %108, %99, %79
  %141 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %142 = load i32, i32* %4, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %140, %61, %58, %31
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.asc_board* @shost_priv(i32) #1

declare dso_local i32 @ASC_DBG(i32, i8*, ...) #1

declare dso_local i64 @ASC_NARROW_BOARD(%struct.asc_board*) #1

declare dso_local i32 @asc_build_req(%struct.asc_board*, %struct.scsi_cmnd*, %struct.asc_scsi_q*) #1

declare dso_local i32 @ASC_STATS(i32, i32) #1

declare dso_local i32 @AscExeScsiQueue(%struct.TYPE_9__*, %struct.asc_scsi_q*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @adv_build_req(%struct.asc_board*, %struct.scsi_cmnd*, i32**) #1

declare dso_local i32 @AdvExeScsiQueue(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i8* @HOST_BYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
