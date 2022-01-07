; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_monreader.c_mon_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_monreader.c_mon_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.mon_private* }
%struct.mon_private = type { %struct.mon_private**, i64, i64, i32, i32, i32, i32, i64 }

@user_data_sever = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Disconnecting the z/VM *MONITOR system service failed with rc=%i\0A\00", align 1
@monreader_device = common dso_local global i32 0, align 4
@MON_MSGLIM = common dso_local global i32 0, align 4
@MON_IN_USE = common dso_local global i32 0, align 4
@mon_in_use = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mon_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mon_private*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.mon_private*, %struct.mon_private** %9, align 8
  store %struct.mon_private* %10, %struct.mon_private** %7, align 8
  %11 = load %struct.mon_private*, %struct.mon_private** %7, align 8
  %12 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.mon_private*, %struct.mon_private** %7, align 8
  %17 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @user_data_sever, align 4
  %20 = call i32 @iucv_path_sever(i64 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pr_warn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %15
  %27 = load %struct.mon_private*, %struct.mon_private** %7, align 8
  %28 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @iucv_path_free(i64 %29)
  br label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.mon_private*, %struct.mon_private** %7, align 8
  %33 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %32, i32 0, i32 6
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load %struct.mon_private*, %struct.mon_private** %7, align 8
  %36 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %35, i32 0, i32 5
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  %38 = load %struct.mon_private*, %struct.mon_private** %7, align 8
  %39 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %38, i32 0, i32 4
  %40 = call i32 @atomic_set(i32* %39, i32 0)
  %41 = load %struct.mon_private*, %struct.mon_private** %7, align 8
  %42 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %41, i32 0, i32 3
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load %struct.mon_private*, %struct.mon_private** %7, align 8
  %45 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.mon_private*, %struct.mon_private** %7, align 8
  %47 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @monreader_device, align 4
  %49 = call i32 @dev_set_drvdata(i32 %48, i32* null)
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %63, %31
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @MON_MSGLIM, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load %struct.mon_private*, %struct.mon_private** %7, align 8
  %56 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %55, i32 0, i32 0
  %57 = load %struct.mon_private**, %struct.mon_private*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.mon_private*, %struct.mon_private** %57, i64 %59
  %61 = load %struct.mon_private*, %struct.mon_private** %60, align 8
  %62 = call i32 @kfree(%struct.mon_private* %61)
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %50

66:                                               ; preds = %50
  %67 = load %struct.mon_private*, %struct.mon_private** %7, align 8
  %68 = call i32 @kfree(%struct.mon_private* %67)
  %69 = load i32, i32* @MON_IN_USE, align 4
  %70 = call i32 @clear_bit(i32 %69, i32* @mon_in_use)
  ret i32 0
}

declare dso_local i32 @iucv_path_sever(i64, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @iucv_path_free(i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32, i32*) #1

declare dso_local i32 @kfree(%struct.mon_private*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
