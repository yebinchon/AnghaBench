; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir_fplus.c_adfs_fplus_setpos.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir_fplus.c_adfs_fplus_setpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_dir = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }
%struct.adfs_bigdirheader = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adfs_dir*, i32)* @adfs_fplus_setpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_fplus_setpos(%struct.adfs_dir* %0, i32 %1) #0 {
  %3 = alloca %struct.adfs_dir*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adfs_bigdirheader*, align 8
  %6 = alloca i32, align 4
  store %struct.adfs_dir* %0, %struct.adfs_dir** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.adfs_dir*, %struct.adfs_dir** %3, align 8
  %8 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.adfs_bigdirheader*
  store %struct.adfs_bigdirheader* %14, %struct.adfs_bigdirheader** %5, align 8
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.adfs_bigdirheader*, %struct.adfs_bigdirheader** %5, align 8
  %19 = getelementptr inbounds %struct.adfs_bigdirheader, %struct.adfs_bigdirheader* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  %22 = icmp ule i32 %17, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.adfs_dir*, %struct.adfs_dir** %3, align 8
  %26 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
