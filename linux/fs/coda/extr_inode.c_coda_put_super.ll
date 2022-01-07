; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_inode.c_coda_put_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_inode.c_coda_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32* }
%struct.venus_comm = type { i32, i32* }

@.str = private unnamed_addr constant [10 x i8] c"Bye bye.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @coda_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.venus_comm*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.venus_comm* @coda_vcp(%struct.super_block* %4)
  store %struct.venus_comm* %5, %struct.venus_comm** %3, align 8
  %6 = load %struct.venus_comm*, %struct.venus_comm** %3, align 8
  %7 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.venus_comm*, %struct.venus_comm** %3, align 8
  %10 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.venus_comm*, %struct.venus_comm** %3, align 8
  %14 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %13, i32 0, i32 0
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load %struct.venus_comm*, %struct.venus_comm** %3, align 8
  %17 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %16, i32 0, i32 0
  %18 = call i32 @mutex_destroy(i32* %17)
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.venus_comm* @coda_vcp(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
