; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_common_create_luns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_common_create_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32 }
%struct.fsg_config = type { i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"lun%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Number of LUNs=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsg_common_create_luns(%struct.fsg_common* %0, %struct.fsg_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_common*, align 8
  %5 = alloca %struct.fsg_config*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %4, align 8
  store %struct.fsg_config* %1, %struct.fsg_config** %5, align 8
  %9 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %10 = call i32 @fsg_common_remove_luns(%struct.fsg_common* %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %35, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.fsg_config*, %struct.fsg_config** %5, align 8
  %14 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @snprintf(i8* %18, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %22 = load %struct.fsg_config*, %struct.fsg_config** %5, align 8
  %23 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %30 = call i32 @fsg_common_create_lun(%struct.fsg_common* %21, i32* %27, i32 %28, i8* %29, i32* null)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %43

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load %struct.fsg_config*, %struct.fsg_config** %5, align 8
  %40 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32 0, i32* %3, align 4
  br label %48

43:                                               ; preds = %33
  %44 = load %struct.fsg_common*, %struct.fsg_common** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @_fsg_common_remove_luns(%struct.fsg_common* %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @fsg_common_remove_luns(%struct.fsg_common*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fsg_common_create_lun(%struct.fsg_common*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @_fsg_common_remove_luns(%struct.fsg_common*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
