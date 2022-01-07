; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_viafbdev.c_viafb_init_proc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_viafbdev.c_viafb_init_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viafb_shared = type { %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.TYPE_2__, %struct.proc_dir_entry* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.proc_dir_entry = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"viafb\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"supported_output_devices\00", align 1
@viafb_sup_odev_proc_show = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"iga1\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"output_devices\00", align 1
@viafb_iga1_odev_proc_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"iga2\00", align 1
@viafb_iga2_odev_proc_fops = common dso_local global i32 0, align 4
@viafb_dfph_proc_fops = common dso_local global i32 0, align 4
@viafb_dfpl_proc_fops = common dso_local global i32 0, align 4
@viafb_dvp0_proc_fops = common dso_local global i32 0, align 4
@viafb_dvp1_proc_fops = common dso_local global i32 0, align 4
@viafb_vt1636_proc_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.viafb_shared*)* @viafb_init_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viafb_init_proc(%struct.viafb_shared* %0) #0 {
  %2 = alloca %struct.viafb_shared*, align 8
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.proc_dir_entry*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  store %struct.viafb_shared* %0, %struct.viafb_shared** %2, align 8
  %6 = call %struct.proc_dir_entry* @proc_mkdir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.proc_dir_entry* null)
  store %struct.proc_dir_entry* %6, %struct.proc_dir_entry** %5, align 8
  %7 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %8 = load %struct.viafb_shared*, %struct.viafb_shared** %2, align 8
  %9 = getelementptr inbounds %struct.viafb_shared, %struct.viafb_shared* %8, i32 0, i32 3
  store %struct.proc_dir_entry* %7, %struct.proc_dir_entry** %9, align 8
  %10 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %11 = icmp ne %struct.proc_dir_entry* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %14 = load i32, i32* @viafb_sup_odev_proc_show, align 4
  %15 = call i32 @proc_create_single(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.proc_dir_entry* %13, i32 %14)
  %16 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %17 = call %struct.proc_dir_entry* @proc_mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.proc_dir_entry* %16)
  store %struct.proc_dir_entry* %17, %struct.proc_dir_entry** %3, align 8
  %18 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %19 = load %struct.viafb_shared*, %struct.viafb_shared** %2, align 8
  %20 = getelementptr inbounds %struct.viafb_shared, %struct.viafb_shared* %19, i32 0, i32 1
  store %struct.proc_dir_entry* %18, %struct.proc_dir_entry** %20, align 8
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %22 = call i32 @proc_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0, %struct.proc_dir_entry* %21, i32* @viafb_iga1_odev_proc_fops)
  %23 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %24 = call %struct.proc_dir_entry* @proc_mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.proc_dir_entry* %23)
  store %struct.proc_dir_entry* %24, %struct.proc_dir_entry** %4, align 8
  %25 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %26 = load %struct.viafb_shared*, %struct.viafb_shared** %2, align 8
  %27 = getelementptr inbounds %struct.viafb_shared, %struct.viafb_shared* %26, i32 0, i32 0
  store %struct.proc_dir_entry* %25, %struct.proc_dir_entry** %27, align 8
  %28 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %29 = call i32 @proc_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0, %struct.proc_dir_entry* %28, i32* @viafb_iga2_odev_proc_fops)
  br label %30

30:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, %struct.proc_dir_entry*) #1

declare dso_local i32 @proc_create_single(i8*, i32, %struct.proc_dir_entry*, i32) #1

declare dso_local i32 @proc_create(i8*, i32, %struct.proc_dir_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
