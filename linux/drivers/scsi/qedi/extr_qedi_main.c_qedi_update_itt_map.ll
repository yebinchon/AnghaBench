; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_update_itt_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_update_itt_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, %struct.qedi_cmd* }
%struct.qedi_cmd = type { i32 }

@QEDI_LOG_CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"update itt map tid=0x%x, with proto itt=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedi_update_itt_map(%struct.qedi_ctx* %0, i64 %1, i64 %2, %struct.qedi_cmd* %3) #0 {
  %5 = alloca %struct.qedi_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qedi_cmd*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.qedi_cmd* %3, %struct.qedi_cmd** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 %9, i64* %15, align 8
  %16 = load %struct.qedi_cmd*, %struct.qedi_cmd** %8, align 8
  %17 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.qedi_cmd* %16, %struct.qedi_cmd** %22, align 8
  %23 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* @QEDI_LOG_CONN, align 4
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @QEDI_INFO(i32* %24, i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %33)
  ret void
}

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
