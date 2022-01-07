; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_probe_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_debugfs.c_mtu3_probe_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debugfs_reg32 = type { i64, i32 }
%struct.seq_file = type { %struct.mtu3*, i32 }
%struct.mtu3 = type { i32 }
%struct.TYPE_2__ = type { i8* }

@mtu3_prb_regs = common dso_local global %struct.debugfs_reg32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"0x%04x - 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mtu3_probe_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtu3_probe_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mtu3*, align 8
  %7 = alloca %struct.debugfs_reg32*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_2__* @file_dentry(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 0
  %17 = load %struct.mtu3*, %struct.mtu3** %16, align 8
  store %struct.mtu3* %17, %struct.mtu3** %6, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %36, %2
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** @mtu3_prb_regs, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.debugfs_reg32* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** @mtu3_prb_regs, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %24, i64 %26
  store %struct.debugfs_reg32* %27, %struct.debugfs_reg32** %7, align 8
  %28 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %29 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @strcmp(i32 %30, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %39

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %18

39:                                               ; preds = %34, %18
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %42 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.mtu3*, %struct.mtu3** %6, align 8
  %46 = getelementptr inbounds %struct.mtu3, %struct.mtu3* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %7, align 8
  %49 = getelementptr inbounds %struct.debugfs_reg32, %struct.debugfs_reg32* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @mtu3_readl(i32 %47, i32 %51)
  %53 = call i32 @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %52)
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @file_dentry(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.debugfs_reg32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

declare dso_local i32 @mtu3_readl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
