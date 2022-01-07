; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_extwriter_counter_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_extwriter_counter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_transaction = type { i32 }

@TRANS_EXTWRITERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_transaction*, i32)* @extwriter_counter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extwriter_counter_init(%struct.btrfs_transaction* %0, i32 %1) #0 {
  %3 = alloca %struct.btrfs_transaction*, align 8
  %4 = alloca i32, align 4
  store %struct.btrfs_transaction* %0, %struct.btrfs_transaction** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @TRANS_EXTWRITERS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  %13 = call i32 @atomic_set(i32* %6, i32 %12)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
