; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_ns_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_ns_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_ns = type { i64, i32, i32, %struct.nvmet_subsys*, i32, i32, i32 }
%struct.nvmet_subsys = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nvmet_ana_sem = common dso_local global i32 0, align 4
@NVMET_DEFAULT_ANA_GRPID = common dso_local global i64 0, align 8
@nvmet_ana_group_enabled = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvmet_ns* @nvmet_ns_alloc(%struct.nvmet_subsys* %0, i32 %1) #0 {
  %3 = alloca %struct.nvmet_ns*, align 8
  %4 = alloca %struct.nvmet_subsys*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvmet_ns*, align 8
  store %struct.nvmet_subsys* %0, %struct.nvmet_subsys** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.nvmet_ns* @kzalloc(i32 40, i32 %7)
  store %struct.nvmet_ns* %8, %struct.nvmet_ns** %6, align 8
  %9 = load %struct.nvmet_ns*, %struct.nvmet_ns** %6, align 8
  %10 = icmp ne %struct.nvmet_ns* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.nvmet_ns* null, %struct.nvmet_ns** %3, align 8
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.nvmet_ns*, %struct.nvmet_ns** %6, align 8
  %14 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %13, i32 0, i32 6
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.nvmet_ns*, %struct.nvmet_ns** %6, align 8
  %17 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %16, i32 0, i32 5
  %18 = call i32 @init_completion(i32* %17)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.nvmet_ns*, %struct.nvmet_ns** %6, align 8
  %21 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nvmet_subsys*, %struct.nvmet_subsys** %4, align 8
  %23 = load %struct.nvmet_ns*, %struct.nvmet_ns** %6, align 8
  %24 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %23, i32 0, i32 3
  store %struct.nvmet_subsys* %22, %struct.nvmet_subsys** %24, align 8
  %25 = call i32 @down_write(i32* @nvmet_ana_sem)
  %26 = load i64, i64* @NVMET_DEFAULT_ANA_GRPID, align 8
  %27 = load %struct.nvmet_ns*, %struct.nvmet_ns** %6, align 8
  %28 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32*, i32** @nvmet_ana_group_enabled, align 8
  %30 = load %struct.nvmet_ns*, %struct.nvmet_ns** %6, align 8
  %31 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = call i32 @up_write(i32* @nvmet_ana_sem)
  %37 = load %struct.nvmet_ns*, %struct.nvmet_ns** %6, align 8
  %38 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %37, i32 0, i32 2
  %39 = call i32 @uuid_gen(i32* %38)
  %40 = load %struct.nvmet_ns*, %struct.nvmet_ns** %6, align 8
  %41 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %40, i32 0, i32 1
  store i32 0, i32* %41, align 8
  %42 = load %struct.nvmet_ns*, %struct.nvmet_ns** %6, align 8
  store %struct.nvmet_ns* %42, %struct.nvmet_ns** %3, align 8
  br label %43

43:                                               ; preds = %12, %11
  %44 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  ret %struct.nvmet_ns* %44
}

declare dso_local %struct.nvmet_ns* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @uuid_gen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
