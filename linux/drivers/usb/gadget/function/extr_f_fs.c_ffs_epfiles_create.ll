; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_epfiles_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_epfiles_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_data = type { i32, i32, i32*, %struct.ffs_epfile*, i32 }
%struct.ffs_epfile = type { i32, i32, i32, %struct.ffs_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FUNCTIONFS_VIRTUAL_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ep%02x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ep%u\00", align 1
@ffs_epfile_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffs_data*)* @ffs_epfiles_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_epfiles_create(%struct.ffs_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ffs_data*, align 8
  %4 = alloca %struct.ffs_epfile*, align 8
  %5 = alloca %struct.ffs_epfile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ffs_data* %0, %struct.ffs_data** %3, align 8
  %8 = call i32 (...) @ENTER()
  %9 = load %struct.ffs_data*, %struct.ffs_data** %3, align 8
  %10 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ffs_epfile* @kcalloc(i32 %12, i32 24, i32 %13)
  store %struct.ffs_epfile* %14, %struct.ffs_epfile** %5, align 8
  %15 = load %struct.ffs_epfile*, %struct.ffs_epfile** %5, align 8
  %16 = icmp ne %struct.ffs_epfile* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %93

20:                                               ; preds = %1
  %21 = load %struct.ffs_epfile*, %struct.ffs_epfile** %5, align 8
  store %struct.ffs_epfile* %21, %struct.ffs_epfile** %4, align 8
  store i32 1, i32* %6, align 4
  br label %22

22:                                               ; preds = %84, %20
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %89

26:                                               ; preds = %22
  %27 = load %struct.ffs_data*, %struct.ffs_data** %3, align 8
  %28 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %29 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %28, i32 0, i32 3
  store %struct.ffs_data* %27, %struct.ffs_data** %29, align 8
  %30 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %31 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %30, i32 0, i32 2
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.ffs_data*, %struct.ffs_data** %3, align 8
  %34 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FUNCTIONFS_VIRTUAL_ADDR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %26
  %40 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %41 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ffs_data*, %struct.ffs_data** %3, align 8
  %44 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sprintf(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %57

51:                                               ; preds = %26
  %52 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %53 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @sprintf(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %39
  %58 = load %struct.ffs_data*, %struct.ffs_data** %3, align 8
  %59 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %62 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %65 = call i32 @ffs_sb_create_file(i32 %60, i32 %63, %struct.ffs_epfile* %64, i32* @ffs_epfile_operations)
  %66 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %67 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %69 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %57
  %77 = load %struct.ffs_epfile*, %struct.ffs_epfile** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sub i32 %78, 1
  %80 = call i32 @ffs_epfiles_destroy(%struct.ffs_epfile* %77, i32 %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %93

83:                                               ; preds = %57
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %6, align 4
  %87 = load %struct.ffs_epfile*, %struct.ffs_epfile** %4, align 8
  %88 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %87, i32 1
  store %struct.ffs_epfile* %88, %struct.ffs_epfile** %4, align 8
  br label %22

89:                                               ; preds = %22
  %90 = load %struct.ffs_epfile*, %struct.ffs_epfile** %5, align 8
  %91 = load %struct.ffs_data*, %struct.ffs_data** %3, align 8
  %92 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %91, i32 0, i32 3
  store %struct.ffs_epfile* %90, %struct.ffs_epfile** %92, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %76, %17
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @ENTER(...) #1

declare dso_local %struct.ffs_epfile* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @ffs_sb_create_file(i32, i32, %struct.ffs_epfile*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ffs_epfiles_destroy(%struct.ffs_epfile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
