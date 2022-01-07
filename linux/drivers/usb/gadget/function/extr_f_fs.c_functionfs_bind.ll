; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_functionfs_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_functionfs_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_data = type { i64, %struct.TYPE_3__*, %struct.usb_gadget_strings**, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_gadget_strings = type { %struct.usb_string* }
%struct.usb_string = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.ffs_data*, i32 }
%struct.usb_composite_dev = type { %struct.TYPE_3__* }

@FFS_ACTIVE = common dso_local global i64 0, align 8
@FFS_FL_BOUND = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ffs_ep0_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffs_data*, %struct.usb_composite_dev*)* @functionfs_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @functionfs_bind(%struct.ffs_data* %0, %struct.usb_composite_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ffs_data*, align 8
  %5 = alloca %struct.usb_composite_dev*, align 8
  %6 = alloca %struct.usb_gadget_strings**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_string*, align 8
  %9 = alloca i32, align 4
  store %struct.ffs_data* %0, %struct.ffs_data** %4, align 8
  store %struct.usb_composite_dev* %1, %struct.usb_composite_dev** %5, align 8
  %10 = call i32 (...) @ENTER()
  %11 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %12 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FFS_ACTIVE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @FFS_FL_BOUND, align 4
  %18 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %19 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %18, i32 0, i32 5
  %20 = call i64 @test_and_set_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %16, %2
  %23 = phi i1 [ true, %2 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EBADFD, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %118

30:                                               ; preds = %22
  %31 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %32 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %33 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @usb_string_ids_n(%struct.usb_composite_dev* %31, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %118

43:                                               ; preds = %30
  %44 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %45 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.TYPE_4__* @usb_ep_alloc_request(i32 %48, i32 %49)
  %51 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %52 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %51, i32 0, i32 3
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %52, align 8
  %53 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %54 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %43
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %118

64:                                               ; preds = %43
  %65 = load i32, i32* @ffs_ep0_complete, align 4
  %66 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %67 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 8
  %70 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %71 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %72 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store %struct.ffs_data* %70, %struct.ffs_data** %74, align 8
  %75 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %76 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %75, i32 0, i32 2
  %77 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %76, align 8
  store %struct.usb_gadget_strings** %77, %struct.usb_gadget_strings*** %6, align 8
  %78 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %6, align 8
  %79 = icmp ne %struct.usb_gadget_strings** %78, null
  br i1 %79, label %80, label %110

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %106, %80
  %82 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %6, align 8
  %83 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %82, align 8
  %84 = icmp ne %struct.usb_gadget_strings* %83, null
  br i1 %84, label %85, label %109

85:                                               ; preds = %81
  %86 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %6, align 8
  %87 = load %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %86, align 8
  %88 = getelementptr inbounds %struct.usb_gadget_strings, %struct.usb_gadget_strings* %87, i32 0, i32 0
  %89 = load %struct.usb_string*, %struct.usb_string** %88, align 8
  store %struct.usb_string* %89, %struct.usb_string** %8, align 8
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %100, %85
  %92 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %93 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %99 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  %103 = load %struct.usb_string*, %struct.usb_string** %8, align 8
  %104 = getelementptr inbounds %struct.usb_string, %struct.usb_string* %103, i32 1
  store %struct.usb_string* %104, %struct.usb_string** %8, align 8
  br label %91

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.usb_gadget_strings**, %struct.usb_gadget_strings*** %6, align 8
  %108 = getelementptr inbounds %struct.usb_gadget_strings*, %struct.usb_gadget_strings** %107, i32 1
  store %struct.usb_gadget_strings** %108, %struct.usb_gadget_strings*** %6, align 8
  br label %81

109:                                              ; preds = %81
  br label %110

110:                                              ; preds = %109, %64
  %111 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %5, align 8
  %112 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %115 = getelementptr inbounds %struct.ffs_data, %struct.ffs_data* %114, i32 0, i32 1
  store %struct.TYPE_3__* %113, %struct.TYPE_3__** %115, align 8
  %116 = load %struct.ffs_data*, %struct.ffs_data** %4, align 8
  %117 = call i32 @ffs_data_get(%struct.ffs_data* %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %110, %61, %41, %27
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usb_string_ids_n(%struct.usb_composite_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_4__* @usb_ep_alloc_request(i32, i32) #1

declare dso_local i32 @ffs_data_get(%struct.ffs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
