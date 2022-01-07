; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_boot_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_boot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32, i8*, i32)* }
%struct.qedi_ctx = type { i32, i64, i32 }

@QEDI_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Get NVM iSCSI CFG image\0A\00", align 1
@qedi_ops = common dso_local global %struct.TYPE_4__* null, align 8
@QED_NVM_IMAGE_ISCSI_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not get NVM image. ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_get_boot_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_get_boot_info(%struct.qedi_ctx* %0) #0 {
  %2 = alloca %struct.qedi_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %4, i32 0, i32 0
  %6 = load i32, i32* @QEDI_LOG_INFO, align 4
  %7 = call i32 @QEDI_INFO(i32* %5, i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @qedi_ops, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (i32, i32, i8*, i32)*, i32 (i32, i32, i8*, i32)** %11, align 8
  %13 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @QED_NVM_IMAGE_ISCSI_CFG, align 4
  %17 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 %12(i32 %15, i32 %16, i8* %20, i32 4)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.qedi_ctx*, %struct.qedi_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @QEDI_ERR(i32* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
