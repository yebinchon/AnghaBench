; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_inode.c_adfs_unix2adfs_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_inode.c_adfs_unix2adfs_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32)* @adfs_unix2adfs_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adfs_unix2adfs_time(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call i64 @adfs_inode_is_stamped(%struct.inode* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 255
  %13 = mul i32 %12, 100
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = udiv i32 %14, 256
  %16 = mul i32 %15, 100
  %17 = load i32, i32* %6, align 4
  %18 = lshr i32 %17, 8
  %19 = add i32 %16, %18
  %20 = add i32 %19, 862886250
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = lshr i32 %21, 24
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -256
  %28 = or i32 %22, %27
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 255
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %33, %35
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %10, %2
  ret void
}

declare dso_local i64 @adfs_inode_is_stamped(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @ADFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
