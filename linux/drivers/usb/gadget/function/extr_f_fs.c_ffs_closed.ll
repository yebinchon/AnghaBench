; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_closed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_data = type { i32, %struct.ffs_dev* }
%struct.ffs_dev = type { i32, %struct.f_fs_opts*, i32 (%struct.ffs_data.0*)*, i32* }
%struct.f_fs_opts = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.config_item* }
%struct.config_item = type { i32 }
%struct.ffs_data.0 = type opaque

@FFS_FL_CALL_CLOSED_CALLBACK = common dso_local global i32 0, align 4
@FFS_FL_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffs_data*)* @ffs_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_closed(%struct.ffs_data* %0) #0 {
  %2 = alloca %struct.ffs_data*, align 8
  %3 = alloca %struct.ffs_dev*, align 8
  %4 = alloca %struct.f_fs_opts*, align 8
  %5 = alloca %struct.config_item*, align 8
  store %struct.ffs_data* %0, %struct.ffs_data** %2, align 8
  %6 = call i32 (...) @ENTER()
  %7 = call i32 (...) @ffs_dev_lock()
  %8 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %9 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %8, i32 0, i32 1
  %10 = load %struct.ffs_dev*, %struct.ffs_dev** %9, align 8
  store %struct.ffs_dev* %10, %struct.ffs_dev** %3, align 8
  %11 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %12 = icmp ne %struct.ffs_dev* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %87

14:                                               ; preds = %1
  %15 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %16 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %18 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* @FFS_FL_CALL_CLOSED_CALLBACK, align 4
  %20 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %21 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %20, i32 0, i32 0
  %22 = call i64 @test_and_clear_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %14
  %25 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %26 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %25, i32 0, i32 2
  %27 = load i32 (%struct.ffs_data.0*)*, i32 (%struct.ffs_data.0*)** %26, align 8
  %28 = icmp ne i32 (%struct.ffs_data.0*)* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %31 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %30, i32 0, i32 2
  %32 = load i32 (%struct.ffs_data.0*)*, i32 (%struct.ffs_data.0*)** %31, align 8
  %33 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %34 = bitcast %struct.ffs_data* %33 to %struct.ffs_data.0*
  %35 = call i32 %32(%struct.ffs_data.0* %34)
  br label %36

36:                                               ; preds = %29, %24, %14
  %37 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %38 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %37, i32 0, i32 1
  %39 = load %struct.f_fs_opts*, %struct.f_fs_opts** %38, align 8
  %40 = icmp ne %struct.f_fs_opts* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.ffs_dev*, %struct.ffs_dev** %3, align 8
  %43 = getelementptr inbounds %struct.ffs_dev, %struct.ffs_dev* %42, i32 0, i32 1
  %44 = load %struct.f_fs_opts*, %struct.f_fs_opts** %43, align 8
  store %struct.f_fs_opts* %44, %struct.f_fs_opts** %4, align 8
  br label %46

45:                                               ; preds = %36
  br label %87

46:                                               ; preds = %41
  %47 = load %struct.f_fs_opts*, %struct.f_fs_opts** %4, align 8
  %48 = getelementptr inbounds %struct.f_fs_opts, %struct.f_fs_opts* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %46
  %52 = load %struct.f_fs_opts*, %struct.f_fs_opts** %4, align 8
  %53 = getelementptr inbounds %struct.f_fs_opts, %struct.f_fs_opts* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.f_fs_opts*, %struct.f_fs_opts** %4, align 8
  %61 = getelementptr inbounds %struct.f_fs_opts, %struct.f_fs_opts* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = call i32 @kref_read(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59, %51, %46
  br label %87

68:                                               ; preds = %59
  %69 = load %struct.f_fs_opts*, %struct.f_fs_opts** %4, align 8
  %70 = getelementptr inbounds %struct.f_fs_opts, %struct.f_fs_opts* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.config_item*, %struct.config_item** %75, align 8
  store %struct.config_item* %76, %struct.config_item** %5, align 8
  %77 = call i32 (...) @ffs_dev_unlock()
  %78 = load i32, i32* @FFS_FL_BOUND, align 4
  %79 = load %struct.ffs_data*, %struct.ffs_data** %2, align 8
  %80 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %79, i32 0, i32 0
  %81 = call i64 @test_bit(i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load %struct.config_item*, %struct.config_item** %5, align 8
  %85 = call i32 @unregister_gadget_item(%struct.config_item* %84)
  br label %86

86:                                               ; preds = %83, %68
  br label %89

87:                                               ; preds = %67, %45, %13
  %88 = call i32 (...) @ffs_dev_unlock()
  br label %89

89:                                               ; preds = %87, %86
  ret void
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @ffs_dev_lock(...) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @ffs_dev_unlock(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @unregister_gadget_item(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
