; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_set_country_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_eeprom.c_mt7601u_set_country_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_channel_bounds = type { i32, i32, i64, i64 }
%struct.mt7601u_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.reg_channel_bounds }

@mt7601u_set_country_reg.chan_bounds = internal constant [10 x %struct.reg_channel_bounds] [%struct.reg_channel_bounds { i32 1, i32 11, i64 0, i64 0 }, %struct.reg_channel_bounds { i32 1, i32 13, i64 0, i64 0 }, %struct.reg_channel_bounds { i32 10, i32 2, i64 0, i64 0 }, %struct.reg_channel_bounds { i32 10, i32 4, i64 0, i64 0 }, %struct.reg_channel_bounds { i32 14, i32 1, i64 0, i64 0 }, %struct.reg_channel_bounds { i32 1, i32 14, i64 0, i64 0 }, %struct.reg_channel_bounds { i32 3, i32 7, i64 0, i64 0 }, %struct.reg_channel_bounds { i32 5, i32 9, i64 0, i64 0 }, %struct.reg_channel_bounds { i32 1, i32 11, i64 0, i64 0 }, %struct.reg_channel_bounds { i32 1, i32 14, i64 0, i64 0 }], align 16
@MT_EE_COUNTRY_REGION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"EEPROM country region %02hhx (channels %hhd-%hhd)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*, i32*)* @mt7601u_set_country_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_set_country_reg(%struct.mt7601u_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i64, i64* @MT_EE_COUNTRY_REGION, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 31
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 33
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 32
  %24 = add nsw i32 %23, 8
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %21, %18, %15
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [10 x %struct.reg_channel_bounds], [10 x %struct.reg_channel_bounds]* @mt7601u_set_country_reg.chan_bounds, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.reg_channel_bounds, %struct.reg_channel_bounds* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x %struct.reg_channel_bounds], [10 x %struct.reg_channel_bounds]* @mt7601u_set_country_reg.chan_bounds, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.reg_channel_bounds, %struct.reg_channel_bounds* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [10 x %struct.reg_channel_bounds], [10 x %struct.reg_channel_bounds]* @mt7601u_set_country_reg.chan_bounds, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.reg_channel_bounds, %struct.reg_channel_bounds* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %42, %47
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @dev_info(i32 %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %37, i64 %49)
  br label %52

51:                                               ; preds = %25
  store i32 5, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %54 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x %struct.reg_channel_bounds], [10 x %struct.reg_channel_bounds]* @mt7601u_set_country_reg.chan_bounds, i64 0, i64 %58
  %60 = bitcast %struct.reg_channel_bounds* %56 to i8*
  %61 = bitcast %struct.reg_channel_bounds* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 24, i1 false)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
