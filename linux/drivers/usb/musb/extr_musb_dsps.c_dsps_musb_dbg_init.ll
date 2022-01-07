; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_musb_dbg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_musb_dbg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32 }
%struct.dsps_glue = type { %struct.TYPE_2__, %struct.dentry* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s.dsps\00", align 1
@dsps_musb_regs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"regdump\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*, %struct.dsps_glue*)* @dsps_musb_dbg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsps_musb_dbg_init(%struct.musb* %0, %struct.dsps_glue* %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca %struct.dsps_glue*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca [128 x i8], align 16
  store %struct.musb* %0, %struct.musb** %3, align 8
  store %struct.dsps_glue* %1, %struct.dsps_glue** %4, align 8
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %8 = load %struct.musb*, %struct.musb** %3, align 8
  %9 = getelementptr inbounds %struct.musb, %struct.musb* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @dev_name(i32 %10)
  %12 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %14 = call %struct.dentry* @debugfs_create_dir(i8* %13, i32* null)
  store %struct.dentry* %14, %struct.dentry** %5, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = load %struct.dsps_glue*, %struct.dsps_glue** %4, align 8
  %17 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %16, i32 0, i32 1
  store %struct.dentry* %15, %struct.dentry** %17, align 8
  %18 = load i32, i32* @dsps_musb_regs, align 4
  %19 = load %struct.dsps_glue*, %struct.dsps_glue** %4, align 8
  %20 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @dsps_musb_regs, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = load %struct.dsps_glue*, %struct.dsps_glue** %4, align 8
  %25 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.musb*, %struct.musb** %3, align 8
  %28 = getelementptr inbounds %struct.musb, %struct.musb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dsps_glue*, %struct.dsps_glue** %4, align 8
  %31 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @S_IRUGO, align 4
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = load %struct.dsps_glue*, %struct.dsps_glue** %4, align 8
  %36 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %35, i32 0, i32 0
  %37 = call i32 @debugfs_create_regset32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33, %struct.dentry* %34, %struct.TYPE_2__* %36)
  ret i32 0
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @debugfs_create_regset32(i8*, i32, %struct.dentry*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
