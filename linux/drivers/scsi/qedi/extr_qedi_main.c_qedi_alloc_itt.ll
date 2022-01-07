; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_itt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_alloc_itt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, i32 }

@MAX_ISCSI_TASK_ENTRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to allocate itt map array memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedi_ctx*)* @qedi_alloc_itt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_alloc_itt(%struct.qedi_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedi_ctx*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %3, align 8
  %4 = load i32, i32* @MAX_ISCSI_TASK_ENTRIES, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @kcalloc(i32 %4, i32 4, i32 %5)
  %7 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %14, i32 0, i32 0
  %16 = call i32 @QEDI_ERR(i32* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
