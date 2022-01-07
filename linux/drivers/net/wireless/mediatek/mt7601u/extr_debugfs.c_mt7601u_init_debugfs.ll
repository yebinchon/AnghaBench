; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_debugfs.c_mt7601u_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_debugfs.c_mt7601u_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"mt7601u\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"temp_mode\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"regidx\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"regval\00", align 1
@fops_regval = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"ampdu_stat\00", align 1
@fops_ampdu_stat = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"eeprom_param\00", align 1
@fops_eeprom_param = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7601u_init_debugfs(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca %struct.mt7601u_dev*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %2, align 8
  %4 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  store %struct.dentry* %11, %struct.dentry** %3, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %37

15:                                               ; preds = %1
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %17, i32 0, i32 2
  %19 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 256, %struct.dentry* %16, i32* %18)
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %22 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %21, i32 0, i32 1
  %23 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 256, %struct.dentry* %20, i32* %22)
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  %25 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %26 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %25, i32 0, i32 0
  %27 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 384, %struct.dentry* %24, i32* %26)
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %30 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 384, %struct.dentry* %28, %struct.mt7601u_dev* %29, i32* @fops_regval)
  %31 = load %struct.dentry*, %struct.dentry** %3, align 8
  %32 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %33 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 256, %struct.dentry* %31, %struct.mt7601u_dev* %32, i32* @fops_ampdu_stat)
  %34 = load %struct.dentry*, %struct.dentry** %3, align 8
  %35 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %36 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 256, %struct.dentry* %34, %struct.mt7601u_dev* %35, i32* @fops_eeprom_param)
  br label %37

37:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mt7601u_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
