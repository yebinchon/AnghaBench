; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_get_uri_file_reclen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmur.c_get_uri_file_reclen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urdev = type { i32 }
%struct.file_control_block = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FLG_CP_DUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urdev*)* @get_uri_file_reclen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_uri_file_reclen(%struct.urdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urdev*, align 8
  %4 = alloca %struct.file_control_block*, align 8
  %5 = alloca i32, align 4
  store %struct.urdev* %0, %struct.urdev** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load i32, i32* @GFP_DMA, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.file_control_block* @kmalloc(i32 8, i32 %8)
  store %struct.file_control_block* %9, %struct.file_control_block** %4, align 8
  %10 = load %struct.file_control_block*, %struct.file_control_block** %4, align 8
  %11 = icmp ne %struct.file_control_block* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.file_control_block*, %struct.file_control_block** %4, align 8
  %17 = call i32 @diag_read_next_file_info(%struct.file_control_block* %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %34

21:                                               ; preds = %15
  %22 = load %struct.file_control_block*, %struct.file_control_block** %4, align 8
  %23 = getelementptr inbounds %struct.file_control_block, %struct.file_control_block* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FLG_CP_DUMP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.file_control_block*, %struct.file_control_block** %4, align 8
  %31 = getelementptr inbounds %struct.file_control_block, %struct.file_control_block* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %28
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.file_control_block*, %struct.file_control_block** %4, align 8
  %36 = call i32 @kfree(%struct.file_control_block* %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.file_control_block* @kmalloc(i32, i32) #1

declare dso_local i32 @diag_read_next_file_info(%struct.file_control_block*, i32) #1

declare dso_local i32 @kfree(%struct.file_control_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
