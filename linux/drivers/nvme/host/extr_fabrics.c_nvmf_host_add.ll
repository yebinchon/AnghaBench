; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_host_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_host_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmf_host = type { i32, i32, i32 }

@nvmf_hosts_mutex = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NVMF_NQN_SIZE = common dso_local global i32 0, align 4
@nvmf_hosts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvmf_host* (i8*)* @nvmf_host_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvmf_host* @nvmf_host_add(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nvmf_host*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 @mutex_lock(i32* @nvmf_hosts_mutex)
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.nvmf_host* @__nvmf_host_find(i8* %5)
  store %struct.nvmf_host* %6, %struct.nvmf_host** %3, align 8
  %7 = load %struct.nvmf_host*, %struct.nvmf_host** %3, align 8
  %8 = icmp ne %struct.nvmf_host* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.nvmf_host*, %struct.nvmf_host** %3, align 8
  %11 = getelementptr inbounds %struct.nvmf_host, %struct.nvmf_host* %10, i32 0, i32 2
  %12 = call i32 @kref_get(i32* %11)
  br label %32

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nvmf_host* @kmalloc(i32 12, i32 %14)
  store %struct.nvmf_host* %15, %struct.nvmf_host** %3, align 8
  %16 = load %struct.nvmf_host*, %struct.nvmf_host** %3, align 8
  %17 = icmp ne %struct.nvmf_host* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %32

19:                                               ; preds = %13
  %20 = load %struct.nvmf_host*, %struct.nvmf_host** %3, align 8
  %21 = getelementptr inbounds %struct.nvmf_host, %struct.nvmf_host* %20, i32 0, i32 2
  %22 = call i32 @kref_init(i32* %21)
  %23 = load %struct.nvmf_host*, %struct.nvmf_host** %3, align 8
  %24 = getelementptr inbounds %struct.nvmf_host, %struct.nvmf_host* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* @NVMF_NQN_SIZE, align 4
  %28 = call i32 @strlcpy(i32 %25, i8* %26, i32 %27)
  %29 = load %struct.nvmf_host*, %struct.nvmf_host** %3, align 8
  %30 = getelementptr inbounds %struct.nvmf_host, %struct.nvmf_host* %29, i32 0, i32 0
  %31 = call i32 @list_add_tail(i32* %30, i32* @nvmf_hosts)
  br label %32

32:                                               ; preds = %19, %18, %9
  %33 = call i32 @mutex_unlock(i32* @nvmf_hosts_mutex)
  %34 = load %struct.nvmf_host*, %struct.nvmf_host** %3, align 8
  ret %struct.nvmf_host* %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nvmf_host* @__nvmf_host_find(i8*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.nvmf_host* @kmalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
