; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcd_mipid.c_ls041y3_esd_check_mode2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcd_mipid.c_ls041y3_esd_check_mode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, [3 x i32] }
%struct.mipid_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ls041y3_esd_check_mode2.rd = internal global %struct.anon* null, align 8
@ls041y3_esd_check_mode2.rd_ctrl = internal constant [7 x %struct.anon] [%struct.anon { i32 176, i32 4, [3 x i32] [i32 257, i32 510, i32 0] }, %struct.anon { i32 177, i32 4, [3 x i32] [i32 478, i32 289, i32 0] }, %struct.anon { i32 194, i32 4, [3 x i32] [i32 256, i32 256, i32 0] }, %struct.anon { i32 189, i32 2, [3 x i32] [i32 256, i32 0, i32 0] }, %struct.anon { i32 194, i32 4, [3 x i32] [i32 508, i32 259, i32 0] }, %struct.anon { i32 180, i32 0, [3 x i32] zeroinitializer }, %struct.anon zeroinitializer], align 16
@.str = private unnamed_addr constant [23 x i8] c"ESD mode 2 state %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mipid_device*)* @ls041y3_esd_check_mode2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ls041y3_esd_check_mode2(%struct.mipid_device* %0) #0 {
  %2 = alloca %struct.mipid_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  store %struct.mipid_device* %0, %struct.mipid_device** %2, align 8
  store %struct.anon* getelementptr inbounds ([7 x %struct.anon], [7 x %struct.anon]* @ls041y3_esd_check_mode2.rd_ctrl, i64 0, i64 0), %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %10 = load %struct.anon*, %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.anon*, %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 2
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %16 = load %struct.anon*, %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mipid_write(%struct.mipid_device* %9, i32 %12, i32* %15, i32 %18)
  br label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  %23 = load %struct.anon*, %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 1
  store %struct.anon* %24, %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  br label %5

25:                                               ; preds = %5
  %26 = call i32 @udelay(i32 10)
  %27 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %28 = load %struct.anon*, %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %32 = call i32 @mipid_read(%struct.mipid_device* %27, i32 %30, i32* %31, i32 2)
  %33 = load %struct.anon*, %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 1
  store %struct.anon* %34, %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %51, %25
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = call i32 @udelay(i32 10)
  %40 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %41 = load %struct.anon*, %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.anon*, %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 2
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %45, i64 0, i64 0
  %47 = load %struct.anon*, %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mipid_write(%struct.mipid_device* %40, i32 %43, i32* %46, i32 %49)
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  %54 = load %struct.anon*, %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 1
  store %struct.anon* %55, %struct.anon** @ls041y3_esd_check_mode2.rd, align 8
  br label %35

56:                                               ; preds = %35
  %57 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %58 = getelementptr inbounds %struct.mipid_device, %struct.mipid_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.mipid_device*, %struct.mipid_device** %2, align 8
  %69 = call i32 @ls041y3_esd_recover(%struct.mipid_device* %68)
  br label %70

70:                                               ; preds = %67, %56
  ret void
}

declare dso_local i32 @mipid_write(%struct.mipid_device*, i32, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mipid_read(%struct.mipid_device*, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ls041y3_esd_recover(%struct.mipid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
