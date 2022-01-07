; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_ns_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_ns_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_ns = type { i64, %struct.nvmet_ns* }

@nvmet_ana_sem = common dso_local global i32 0, align 4
@nvmet_ana_group_enabled = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvmet_ns_free(%struct.nvmet_ns* %0) #0 {
  %2 = alloca %struct.nvmet_ns*, align 8
  store %struct.nvmet_ns* %0, %struct.nvmet_ns** %2, align 8
  %3 = load %struct.nvmet_ns*, %struct.nvmet_ns** %2, align 8
  %4 = call i32 @nvmet_ns_disable(%struct.nvmet_ns* %3)
  %5 = call i32 @down_write(i32* @nvmet_ana_sem)
  %6 = load i32*, i32** @nvmet_ana_group_enabled, align 8
  %7 = load %struct.nvmet_ns*, %struct.nvmet_ns** %2, align 8
  %8 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 4
  %13 = call i32 @up_write(i32* @nvmet_ana_sem)
  %14 = load %struct.nvmet_ns*, %struct.nvmet_ns** %2, align 8
  %15 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %14, i32 0, i32 1
  %16 = load %struct.nvmet_ns*, %struct.nvmet_ns** %15, align 8
  %17 = call i32 @kfree(%struct.nvmet_ns* %16)
  %18 = load %struct.nvmet_ns*, %struct.nvmet_ns** %2, align 8
  %19 = call i32 @kfree(%struct.nvmet_ns* %18)
  ret void
}

declare dso_local i32 @nvmet_ns_disable(%struct.nvmet_ns*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.nvmet_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
