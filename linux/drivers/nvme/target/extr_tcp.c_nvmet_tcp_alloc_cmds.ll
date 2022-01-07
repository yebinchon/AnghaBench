; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_alloc_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_alloc_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i32, %struct.nvmet_tcp_cmd* }
%struct.nvmet_tcp_cmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_queue*)* @nvmet_tcp_alloc_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_tcp_alloc_cmds(%struct.nvmet_tcp_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_tcp_queue*, align 8
  %4 = alloca %struct.nvmet_tcp_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %3, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %11 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nvmet_tcp_cmd* @kcalloc(i32 %13, i32 4, i32 %14)
  store %struct.nvmet_tcp_cmd* %15, %struct.nvmet_tcp_cmd** %4, align 8
  %16 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %17 = icmp ne %struct.nvmet_tcp_cmd* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %56

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %26 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %26, i64 %28
  %30 = call i32 @nvmet_tcp_alloc_cmd(%struct.nvmet_tcp_queue* %25, %struct.nvmet_tcp_cmd* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %42

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %40 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %41 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %40, i32 0, i32 1
  store %struct.nvmet_tcp_cmd* %39, %struct.nvmet_tcp_cmd** %41, align 8
  store i32 0, i32* %2, align 4
  br label %58

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %48, i64 %50
  %52 = call i32 @nvmet_tcp_free_cmd(%struct.nvmet_tcp_cmd* %51)
  br label %43

53:                                               ; preds = %43
  %54 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %55 = call i32 @kfree(%struct.nvmet_tcp_cmd* %54)
  br label %56

56:                                               ; preds = %53, %18
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %38
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.nvmet_tcp_cmd* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @nvmet_tcp_alloc_cmd(%struct.nvmet_tcp_queue*, %struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @nvmet_tcp_free_cmd(%struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @kfree(%struct.nvmet_tcp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
