; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_sync_fs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @exfat_sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call i64 @__is_sb_dirty(%struct.super_block* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call i32 @__lock_super(%struct.super_block* %10)
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call i32 @__set_sb_clean(%struct.super_block* %12)
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = call i32 @ffsSyncVol(%struct.super_block* %14, i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = call i32 @__unlock_super(%struct.super_block* %16)
  br label %18

18:                                               ; preds = %9, %2
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i64 @__is_sb_dirty(%struct.super_block*) #1

declare dso_local i32 @__lock_super(%struct.super_block*) #1

declare dso_local i32 @__set_sb_clean(%struct.super_block*) #1

declare dso_local i32 @ffsSyncVol(%struct.super_block*, i32) #1

declare dso_local i32 @__unlock_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
