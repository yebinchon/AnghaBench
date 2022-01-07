; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2413.c_output_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2413.c_output_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.w1_slave = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@W1_F3A_RETRIES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"locking mutex for write_output\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"mutex locked\00", align 1
@W1_F3A_FUNC_PIO_ACCESS_WRITE = common dso_local global i8 0, align 1
@W1_F3A_SUCCESS_CONFIRM_BYTE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"PIO_ACCESS_WRITE error, retries left: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s, mutex unlocked, retries: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @output_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_write(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.w1_slave*, align 8
  %15 = alloca [3 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.kobject*, %struct.kobject** %9, align 8
  %19 = call %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject* %18)
  store %struct.w1_slave* %19, %struct.w1_slave** %14, align 8
  %20 = load i32, i32* @W1_F3A_RETRIES, align 4
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %17, align 4
  %23 = load i64, i64* %13, align 8
  %24 = icmp ne i64 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %6
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %110

31:                                               ; preds = %25
  %32 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %33 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %36 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %41 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %44 = call i64 @w1_reset_select_slave(%struct.w1_slave* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %95

47:                                               ; preds = %31
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = or i32 %50, 252
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %11, align 8
  store i8 %52, i8* %53, align 1
  br label %54

54:                                               ; preds = %89, %47
  %55 = load i32, i32* %16, align 4
  %56 = add i32 %55, -1
  store i32 %56, i32* %16, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = load i8, i8* @W1_F3A_FUNC_PIO_ACCESS_WRITE, align 1
  %60 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  store i8 %59, i8* %60, align 1
  %61 = load i8*, i8** %11, align 8
  %62 = load i8, i8* %61, align 1
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  store i8 %62, i8* %63, align 1
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = xor i32 %66, -1
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 2
  store i8 %68, i8* %69, align 1
  %70 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %71 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %74 = call i32 @w1_write_block(%struct.TYPE_4__* %72, i8* %73, i32 3)
  %75 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %76 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i64 @w1_read_8(%struct.TYPE_4__* %77)
  %79 = load i64, i64* @W1_F3A_SUCCESS_CONFIRM_BYTE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %58
  store i32 1, i32* %17, align 4
  br label %95

82:                                               ; preds = %58
  %83 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %84 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = call i64 @w1_reset_resume_command(%struct.TYPE_4__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %95

89:                                               ; preds = %82
  %90 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %91 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %90, i32 0, i32 0
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @dev_warn(i32* %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %54

94:                                               ; preds = %54
  br label %95

95:                                               ; preds = %94, %88, %81, %46
  %96 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %97 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.w1_slave*, %struct.w1_slave** %14, align 8
  %102 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %101, i32 0, i32 0
  %103 = load i32, i32* %17, align 4
  %104 = icmp sgt i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %107 = load i32, i32* %16, align 4
  %108 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %106, i32 %107)
  %109 = load i32, i32* %17, align 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %95, %28
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local %struct.w1_slave* @kobj_to_w1_slave(%struct.kobject*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_block(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i64 @w1_read_8(%struct.TYPE_4__*) #1

declare dso_local i64 @w1_reset_resume_command(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
