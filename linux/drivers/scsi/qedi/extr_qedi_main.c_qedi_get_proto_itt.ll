; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_proto_itt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_proto_itt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@QEDI_LOG_CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Get itt map tid [0x%x with proto itt[0x%x]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedi_get_proto_itt(%struct.qedi_ctx* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.qedi_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %6, align 8
  store i64 %13, i64* %14, align 8
  %15 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* @QEDI_LOG_CONN, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @QEDI_INFO(i32* %16, i32 %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %20)
  ret void
}

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
