; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_monreader.c_mon_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_monreader.c_mon_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.mon_private* }
%struct.mon_private = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@MON_IN_USE = common dso_local global i32 0, align 4
@mon_in_use = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MON_MSGLIM = common dso_local global i32 0, align 4
@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@monreader_iucv_handler = common dso_local global i32 0, align 4
@MON_SERVICE = common dso_local global i32 0, align 4
@user_data_connect = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Connecting to the z/VM *MONITOR system service failed with rc=%i\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@mon_conn_wait_queue = common dso_local global i32 0, align 4
@monreader_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mon_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.mon_private*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @EBUSY, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @MON_IN_USE, align 4
  %11 = call i64 @test_and_set_bit(i32 %10, i32* @mon_in_use)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %97

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  %17 = call %struct.mon_private* (...) @mon_alloc_mem()
  store %struct.mon_private* %17, %struct.mon_private** %6, align 8
  %18 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %19 = icmp ne %struct.mon_private* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %94

21:                                               ; preds = %14
  %22 = load i32, i32* @MON_MSGLIM, align 4
  %23 = load i32, i32* @IUCV_IPRMDATA, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @iucv_path_alloc(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %27 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %29 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %91

33:                                               ; preds = %21
  %34 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %35 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MON_SERVICE, align 4
  %38 = load i32, i32* @user_data_connect, align 4
  %39 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %40 = call i32 @iucv_path_connect(i32 %36, i32* @monreader_iucv_handler, i32 %37, i32* null, i32 %38, %struct.mon_private* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %86

48:                                               ; preds = %33
  %49 = load i32, i32* @mon_conn_wait_queue, align 4
  %50 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %51 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %50, i32 0, i32 1
  %52 = call i64 @atomic_read(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %56 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %55, i32 0, i32 2
  %57 = call i64 @atomic_read(i32* %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %48
  %60 = phi i1 [ true, %48 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @wait_event(i32 %49, i32 %61)
  %63 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %64 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %63, i32 0, i32 2
  %65 = call i64 @atomic_read(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %59
  %68 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %69 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %68, i32 0, i32 2
  %70 = call i32 @atomic_set(i32* %69, i32 0)
  %71 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %72 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %71, i32 0, i32 1
  %73 = call i32 @atomic_set(i32* %72, i32 0)
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %86

76:                                               ; preds = %59
  %77 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %78 = load %struct.file*, %struct.file** %5, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 0
  store %struct.mon_private* %77, %struct.mon_private** %79, align 8
  %80 = load i32, i32* @monreader_device, align 4
  %81 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %82 = call i32 @dev_set_drvdata(i32 %80, %struct.mon_private* %81)
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = load %struct.file*, %struct.file** %5, align 8
  %85 = call i32 @nonseekable_open(%struct.inode* %83, %struct.file* %84)
  store i32 %85, i32* %3, align 4
  br label %99

86:                                               ; preds = %67, %43
  %87 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %88 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @iucv_path_free(i32 %89)
  br label %91

91:                                               ; preds = %86, %32
  %92 = load %struct.mon_private*, %struct.mon_private** %6, align 8
  %93 = call i32 @mon_free_mem(%struct.mon_private* %92)
  br label %94

94:                                               ; preds = %91, %20
  %95 = load i32, i32* @MON_IN_USE, align 4
  %96 = call i32 @clear_bit(i32 %95, i32* @mon_in_use)
  br label %97

97:                                               ; preds = %94, %13
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %76
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.mon_private* @mon_alloc_mem(...) #1

declare dso_local i32 @iucv_path_alloc(i32, i32, i32) #1

declare dso_local i32 @iucv_path_connect(i32, i32*, i32, i32*, i32, %struct.mon_private*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32, %struct.mon_private*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @iucv_path_free(i32) #1

declare dso_local i32 @mon_free_mem(%struct.mon_private*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
