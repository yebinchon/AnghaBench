; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_host_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_host_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmf_host = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NVMF_NQN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"nqn.2014-08.org.nvmexpress:uuid:%pUb\00", align 1
@nvmf_hosts_mutex = common dso_local global i32 0, align 4
@nvmf_hosts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvmf_host* ()* @nvmf_host_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvmf_host* @nvmf_host_default() #0 {
  %1 = alloca %struct.nvmf_host*, align 8
  %2 = alloca %struct.nvmf_host*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.nvmf_host* @kmalloc(i32 16, i32 %3)
  store %struct.nvmf_host* %4, %struct.nvmf_host** %2, align 8
  %5 = load %struct.nvmf_host*, %struct.nvmf_host** %2, align 8
  %6 = icmp ne %struct.nvmf_host* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.nvmf_host* null, %struct.nvmf_host** %1, align 8
  br label %28

8:                                                ; preds = %0
  %9 = load %struct.nvmf_host*, %struct.nvmf_host** %2, align 8
  %10 = getelementptr inbounds %struct.nvmf_host, %struct.nvmf_host* %9, i32 0, i32 3
  %11 = call i32 @kref_init(i32* %10)
  %12 = load %struct.nvmf_host*, %struct.nvmf_host** %2, align 8
  %13 = getelementptr inbounds %struct.nvmf_host, %struct.nvmf_host* %12, i32 0, i32 2
  %14 = call i32 @uuid_gen(i32* %13)
  %15 = load %struct.nvmf_host*, %struct.nvmf_host** %2, align 8
  %16 = getelementptr inbounds %struct.nvmf_host, %struct.nvmf_host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NVMF_NQN_SIZE, align 4
  %19 = load %struct.nvmf_host*, %struct.nvmf_host** %2, align 8
  %20 = getelementptr inbounds %struct.nvmf_host, %struct.nvmf_host* %19, i32 0, i32 2
  %21 = call i32 @snprintf(i32 %17, i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* %20)
  %22 = call i32 @mutex_lock(i32* @nvmf_hosts_mutex)
  %23 = load %struct.nvmf_host*, %struct.nvmf_host** %2, align 8
  %24 = getelementptr inbounds %struct.nvmf_host, %struct.nvmf_host* %23, i32 0, i32 0
  %25 = call i32 @list_add_tail(i32* %24, i32* @nvmf_hosts)
  %26 = call i32 @mutex_unlock(i32* @nvmf_hosts_mutex)
  %27 = load %struct.nvmf_host*, %struct.nvmf_host** %2, align 8
  store %struct.nvmf_host* %27, %struct.nvmf_host** %1, align 8
  br label %28

28:                                               ; preds = %8, %7
  %29 = load %struct.nvmf_host*, %struct.nvmf_host** %1, align 8
  ret %struct.nvmf_host* %29
}

declare dso_local %struct.nvmf_host* @kmalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @uuid_gen(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
