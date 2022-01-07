; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_link_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_link_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_link_output = type { i64 }
%struct.qedi_ctx = type { i32, i32 }

@QEDI_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Link Up event.\0A\00", align 1
@QEDI_LINK_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Link Down event.\0A\00", align 1
@QEDI_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.qed_link_output*)* @qedi_link_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_link_update(i8* %0, %struct.qed_link_output* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qed_link_output*, align 8
  %5 = alloca %struct.qedi_ctx*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.qed_link_output* %1, %struct.qed_link_output** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.qedi_ctx*
  store %struct.qedi_ctx* %7, %struct.qedi_ctx** %5, align 8
  %8 = load %struct.qed_link_output*, %struct.qed_link_output** %4, align 8
  %9 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %13, i32 0, i32 1
  %15 = load i32, i32* @QEDI_LOG_INFO, align 4
  %16 = call i32 @QEDI_INFO(i32* %14, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* @QEDI_LINK_UP, align 4
  %20 = call i32 @atomic_set(i32* %18, i32 %19)
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* @QEDI_LOG_INFO, align 4
  %25 = call i32 @QEDI_INFO(i32* %23, i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* @QEDI_LINK_DOWN, align 4
  %29 = call i32 @atomic_set(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %12
  ret void
}

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
