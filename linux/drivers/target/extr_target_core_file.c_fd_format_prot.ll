; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_format_prot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_format_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 (%struct.se_device*)* }
%struct.TYPE_4__ = type { i32, i32 }

@FDBD_FORMAT_UNIT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unable to format_prot while pi_prot_type == 0\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to allocate FILEIO prot buf\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Using FILEIO prot_length: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*)* @fd_format_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_format_prot(%struct.se_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  %7 = load i32, i32* @FDBD_FORMAT_UNIT_SIZE, align 4
  %8 = load %struct.se_device*, %struct.se_device** %3, align 8
  %9 = getelementptr inbounds %struct.se_device, %struct.se_device* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %7, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.se_device*, %struct.se_device** %3, align 8
  %14 = getelementptr inbounds %struct.se_device, %struct.se_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %63

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @vzalloc(i32 %23)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %63

31:                                               ; preds = %22
  %32 = load %struct.se_device*, %struct.se_device** %3, align 8
  %33 = getelementptr inbounds %struct.se_device, %struct.se_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64 (%struct.se_device*)*, i64 (%struct.se_device*)** %35, align 8
  %37 = load %struct.se_device*, %struct.se_device** %3, align 8
  %38 = call i64 %36(%struct.se_device* %37)
  %39 = add nsw i64 %38, 1
  %40 = load %struct.se_device*, %struct.se_device** %3, align 8
  %41 = getelementptr inbounds %struct.se_device, %struct.se_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = mul i64 %39, %42
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @memset(i8* %45, i32 255, i32 %46)
  %48 = load %struct.se_device*, %struct.se_device** %3, align 8
  %49 = load %struct.se_device*, %struct.se_device** %3, align 8
  %50 = getelementptr inbounds %struct.se_device, %struct.se_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64 (%struct.se_device*)*, i64 (%struct.se_device*)** %52, align 8
  %54 = load %struct.se_device*, %struct.se_device** %3, align 8
  %55 = call i64 %53(%struct.se_device* %54)
  %56 = add nsw i64 %55, 1
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @fd_do_prot_fill(%struct.se_device* %48, i32 0, i64 %56, i8* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @vfree(i8* %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %31, %27, %18
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fd_do_prot_fill(%struct.se_device*, i32, i64, i8*, i32) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
