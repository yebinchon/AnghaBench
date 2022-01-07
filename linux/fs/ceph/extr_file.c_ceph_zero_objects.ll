; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_zero_objects.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_zero_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_inode_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64)* @ceph_zero_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_zero_objects(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ceph_inode_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %20)
  store %struct.ceph_inode_info* %21, %struct.ceph_inode_info** %9, align 8
  %22 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %23 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %27 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %9, align 8
  %31 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %13, align 8
  %40 = add nsw i64 %38, %39
  %41 = sub nsw i64 %40, 1
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call i64 @do_div(i64 %43, i64 %44)
  %46 = load i64, i64* %14, align 8
  %47 = sub nsw i64 %46, %45
  store i64 %47, i64* %14, align 8
  br label %48

48:                                               ; preds = %66, %3
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp slt i64 %52, %53
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %57, label %73

57:                                               ; preds = %55
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %16, align 8
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @ceph_zero_partial_object(%struct.inode* %59, i64 %60, i64* %16)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %129

66:                                               ; preds = %57
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %7, align 8
  %72 = sub nsw i64 %71, %70
  store i64 %72, i64* %7, align 8
  br label %48

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %100, %73
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %74
  %79 = load i64, i64* %6, align 8
  store i64 %79, i64* %18, align 8
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %97, %78
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = load i64, i64* %18, align 8
  %87 = call i32 @ceph_zero_partial_object(%struct.inode* %85, i64 %86, i64* null)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %129

92:                                               ; preds = %84
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %18, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %18, align 8
  br label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %80

100:                                              ; preds = %80
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %6, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* %7, align 8
  %106 = sub nsw i64 %105, %104
  store i64 %106, i64* %7, align 8
  br label %74

107:                                              ; preds = %74
  br label %108

108:                                              ; preds = %120, %107
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %108
  %112 = load i64, i64* %7, align 8
  store i64 %112, i64* %19, align 8
  %113 = load %struct.inode*, %struct.inode** %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @ceph_zero_partial_object(%struct.inode* %113, i64 %114, i64* %19)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %4, align 4
  br label %129

120:                                              ; preds = %111
  %121 = load i64, i64* %19, align 8
  %122 = load i64, i64* %6, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %6, align 8
  %124 = load i64, i64* %19, align 8
  %125 = load i64, i64* %7, align 8
  %126 = sub nsw i64 %125, %124
  store i64 %126, i64* %7, align 8
  br label %108

127:                                              ; preds = %108
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %118, %90, %64
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i64 @do_div(i64, i64) #1

declare dso_local i32 @ceph_zero_partial_object(%struct.inode*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
