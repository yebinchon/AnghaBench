; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_fs_parse_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_fs_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.ffs_sb_fill_data* }
%struct.ffs_sb_fill_data = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fs_parameter = type { i32 }
%struct.fs_parse_result = type { i32, i32 }

@ffs_fs_fs_parameters = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@ENOPARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: unmapped value: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.fs_parameter*)* @ffs_fs_parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_fs_parse_param(%struct.fs_context* %0, %struct.fs_parameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.fs_parameter*, align 8
  %6 = alloca %struct.ffs_sb_fill_data*, align 8
  %7 = alloca %struct.fs_parse_result, align 4
  %8 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store %struct.fs_parameter* %1, %struct.fs_parameter** %5, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 0
  %11 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %10, align 8
  store %struct.ffs_sb_fill_data* %11, %struct.ffs_sb_fill_data** %6, align 8
  %12 = call i32 (...) @ENTER()
  %13 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %14 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %15 = call i32 @fs_parse(%struct.fs_context* %13, i32* @ffs_fs_fs_parameters, %struct.fs_parameter* %14, %struct.fs_parse_result* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %104

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %92 [
    i32 130, label %22
    i32 129, label %27
    i32 133, label %35
    i32 131, label %44
    i32 128, label %60
    i32 132, label %76
  ]

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %26 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  br label %95

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 365
  %31 = load i32, i32* @S_IFDIR, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %34 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %95

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 438
  %39 = load i32, i32* @S_IFREG, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %42 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  br label %95

44:                                               ; preds = %20
  %45 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 365
  %48 = load i32, i32* @S_IFDIR, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %51 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 438
  %55 = load i32, i32* @S_IFREG, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %58 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  br label %95

60:                                               ; preds = %20
  %61 = call i32 (...) @current_user_ns()
  %62 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @make_kuid(i32 %61, i32 %63)
  %65 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %66 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 4
  %68 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %69 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @uid_valid(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  br label %96

75:                                               ; preds = %60
  br label %95

76:                                               ; preds = %20
  %77 = call i32 (...) @current_user_ns()
  %78 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @make_kgid(i32 %77, i32 %79)
  %81 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %82 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load %struct.ffs_sb_fill_data*, %struct.ffs_sb_fill_data** %6, align 8
  %85 = getelementptr inbounds %struct.ffs_sb_fill_data, %struct.ffs_sb_fill_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @gid_valid(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %76
  br label %96

91:                                               ; preds = %76
  br label %95

92:                                               ; preds = %20
  %93 = load i32, i32* @ENOPARAM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %104

95:                                               ; preds = %91, %75, %44, %35, %27, %22
  store i32 0, i32* %3, align 4
  br label %104

96:                                               ; preds = %90, %74
  %97 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %98 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %99 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.fs_parse_result, %struct.fs_parse_result* %7, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @invalf(%struct.fs_context* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %102)
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %96, %95, %92, %18
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @fs_parse(%struct.fs_context*, i32*, %struct.fs_parameter*, %struct.fs_parse_result*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @invalf(%struct.fs_context*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
