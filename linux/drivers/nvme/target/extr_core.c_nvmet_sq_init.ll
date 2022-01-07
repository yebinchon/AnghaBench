; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_sq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_sq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_sq = type { i32, i32, i32 }

@nvmet_sq_free = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"percpu_ref init failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmet_sq_init(%struct.nvmet_sq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_sq*, align 8
  %4 = alloca i32, align 4
  store %struct.nvmet_sq* %0, %struct.nvmet_sq** %3, align 8
  %5 = load %struct.nvmet_sq*, %struct.nvmet_sq** %3, align 8
  %6 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %5, i32 0, i32 2
  %7 = load i32, i32* @nvmet_sq_free, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @percpu_ref_init(i32* %6, i32 %7, i32 0, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.nvmet_sq*, %struct.nvmet_sq** %3, align 8
  %17 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %16, i32 0, i32 1
  %18 = call i32 @init_completion(i32* %17)
  %19 = load %struct.nvmet_sq*, %struct.nvmet_sq** %3, align 8
  %20 = getelementptr inbounds %struct.nvmet_sq, %struct.nvmet_sq* %19, i32 0, i32 0
  %21 = call i32 @init_completion(i32* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %15, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @percpu_ref_init(i32*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
