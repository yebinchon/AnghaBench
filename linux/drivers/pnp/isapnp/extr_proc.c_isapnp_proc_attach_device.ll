; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/isapnp/extr_proc.c_isapnp_proc_attach_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/isapnp/extr_proc.c_isapnp_proc_attach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32, %struct.proc_dir_entry*, %struct.pnp_card* }
%struct.proc_dir_entry = type { i32 }
%struct.pnp_card = type { i32, %struct.proc_dir_entry* }

@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@isapnp_proc_bus_dir = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@isapnp_proc_bus_file_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*)* @isapnp_proc_attach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isapnp_proc_attach_device(%struct.pnp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca %struct.pnp_card*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca [16 x i8], align 16
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %8, i32 0, i32 2
  %10 = load %struct.pnp_card*, %struct.pnp_card** %9, align 8
  store %struct.pnp_card* %10, %struct.pnp_card** %4, align 8
  %11 = load %struct.pnp_card*, %struct.pnp_card** %4, align 8
  %12 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %11, i32 0, i32 1
  %13 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %12, align 8
  store %struct.proc_dir_entry* %13, %struct.proc_dir_entry** %5, align 8
  %14 = icmp ne %struct.proc_dir_entry* %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %17 = load %struct.pnp_card*, %struct.pnp_card** %4, align 8
  %18 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %22 = load i32, i32* @isapnp_proc_bus_dir, align 4
  %23 = call %struct.proc_dir_entry* @proc_mkdir(i8* %21, i32 %22)
  %24 = load %struct.pnp_card*, %struct.pnp_card** %4, align 8
  %25 = getelementptr inbounds %struct.pnp_card, %struct.pnp_card* %24, i32 0, i32 1
  store %struct.proc_dir_entry* %23, %struct.proc_dir_entry** %25, align 8
  store %struct.proc_dir_entry* %23, %struct.proc_dir_entry** %5, align 8
  %26 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %27 = icmp ne %struct.proc_dir_entry* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %15
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31, %1
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %34 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %35 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %39 = load i32, i32* @S_IFREG, align 4
  %40 = load i32, i32* @S_IRUGO, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %43 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %44 = call %struct.proc_dir_entry* @proc_create_data(i8* %38, i32 %41, %struct.proc_dir_entry* %42, i32* @isapnp_proc_bus_file_operations, %struct.pnp_dev* %43)
  %45 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %46 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %45, i32 0, i32 1
  store %struct.proc_dir_entry* %44, %struct.proc_dir_entry** %46, align 8
  store %struct.proc_dir_entry* %44, %struct.proc_dir_entry** %6, align 8
  %47 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %48 = icmp ne %struct.proc_dir_entry* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %55

52:                                               ; preds = %32
  %53 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %54 = call i32 @proc_set_size(%struct.proc_dir_entry* %53, i32 256)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %49, %28
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @proc_create_data(i8*, i32, %struct.proc_dir_entry*, i32*, %struct.pnp_dev*) #1

declare dso_local i32 @proc_set_size(%struct.proc_dir_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
