; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_device = type { i32, i32 }

@BTRFS_DEV_STATE_MISSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"<missing disk>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.btrfs_device*)* @btrfs_dev_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @btrfs_dev_name(%struct.btrfs_device* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.btrfs_device*, align 8
  store %struct.btrfs_device* %0, %struct.btrfs_device** %3, align 8
  %4 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %5 = icmp ne %struct.btrfs_device* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* @BTRFS_DEV_STATE_MISSING, align 4
  %8 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %8, i32 0, i32 1
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %18

13:                                               ; preds = %6
  %14 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %15 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @rcu_str_deref(i32 %16)
  store i8* %17, i8** %2, align 8
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @rcu_str_deref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
