; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_debugfs.c_musb_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_debugfs.c_musb_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { %struct.dentry*, i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"regdump\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@musb_regdump_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"testmode\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@musb_test_mode_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"softconnect\00", align 1
@musb_softconnect_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @musb_init_debugfs(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.musb* %0, %struct.musb** %2, align 8
  %4 = load %struct.musb*, %struct.musb** %2, align 8
  %5 = getelementptr inbounds %struct.musb, %struct.musb* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @dev_name(i32 %6)
  %8 = call %struct.dentry* @debugfs_create_dir(i32 %7, i32* null)
  store %struct.dentry* %8, %struct.dentry** %3, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = load %struct.musb*, %struct.musb** %2, align 8
  %11 = getelementptr inbounds %struct.musb, %struct.musb* %10, i32 0, i32 0
  store %struct.dentry* %9, %struct.dentry** %11, align 8
  %12 = load i32, i32* @S_IRUGO, align 4
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = load %struct.musb*, %struct.musb** %2, align 8
  %15 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12, %struct.dentry* %13, %struct.musb* %14, i32* @musb_regdump_fops)
  %16 = load i32, i32* @S_IRUGO, align 4
  %17 = load i32, i32* @S_IWUSR, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = load %struct.musb*, %struct.musb** %2, align 8
  %21 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %18, %struct.dentry* %19, %struct.musb* %20, i32* @musb_test_mode_fops)
  %22 = load i32, i32* @S_IRUGO, align 4
  %23 = load i32, i32* @S_IWUSR, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.dentry*, %struct.dentry** %3, align 8
  %26 = load %struct.musb*, %struct.musb** %2, align 8
  %27 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %24, %struct.dentry* %25, %struct.musb* %26, i32* @musb_softconnect_fops)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.musb*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
