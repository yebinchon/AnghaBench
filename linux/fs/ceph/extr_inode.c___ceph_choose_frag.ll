; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c___ceph_choose_frag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c___ceph_choose_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { i32 }
%struct.ceph_inode_frag = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"choose_frag(%x) %x splits by %d (%d ways)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"choose_frag(%x) = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_inode_info*, i32, %struct.ceph_inode_frag*, i32*)* @__ceph_choose_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ceph_choose_frag(%struct.ceph_inode_info* %0, i32 %1, %struct.ceph_inode_frag* %2, i32* %3) #0 {
  %5 = alloca %struct.ceph_inode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_inode_frag*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_inode_frag*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ceph_inode_frag* %2, %struct.ceph_inode_frag** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = call i32 @ceph_frag_make(i32 0, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %4
  br label %20

20:                                               ; preds = %19, %85
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @ceph_frag_contains_value(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.ceph_inode_frag* @__ceph_find_frag(%struct.ceph_inode_info* %28, i32 %29)
  store %struct.ceph_inode_frag* %30, %struct.ceph_inode_frag** %10, align 8
  %31 = load %struct.ceph_inode_frag*, %struct.ceph_inode_frag** %10, align 8
  %32 = icmp ne %struct.ceph_inode_frag* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %20
  br label %91

34:                                               ; preds = %20
  %35 = load %struct.ceph_inode_frag*, %struct.ceph_inode_frag** %10, align 8
  %36 = getelementptr inbounds %struct.ceph_inode_frag, %struct.ceph_inode_frag* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.ceph_inode_frag*, %struct.ceph_inode_frag** %7, align 8
  %41 = icmp ne %struct.ceph_inode_frag* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.ceph_inode_frag*, %struct.ceph_inode_frag** %7, align 8
  %44 = load %struct.ceph_inode_frag*, %struct.ceph_inode_frag** %10, align 8
  %45 = call i32 @memcpy(%struct.ceph_inode_frag* %43, %struct.ceph_inode_frag* %44, i32 4)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32*, i32** %8, align 8
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %49, %46
  br label %91

52:                                               ; preds = %34
  %53 = load %struct.ceph_inode_frag*, %struct.ceph_inode_frag** %10, align 8
  %54 = getelementptr inbounds %struct.ceph_inode_frag, %struct.ceph_inode_frag* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 1, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.ceph_inode_frag*, %struct.ceph_inode_frag** %10, align 8
  %60 = getelementptr inbounds %struct.ceph_inode_frag, %struct.ceph_inode_frag* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i8*, i32, i32, ...) @dout(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %61, i32 %62)
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %82, %52
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.ceph_inode_frag*, %struct.ceph_inode_frag** %10, align 8
  %71 = getelementptr inbounds %struct.ceph_inode_frag, %struct.ceph_inode_frag* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @ceph_frag_make_child(i32 %69, i32 %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @ceph_frag_contains_value(i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %9, align 4
  br label %85

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %12, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %64

85:                                               ; preds = %79, %64
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUG_ON(i32 %89)
  br label %20

91:                                               ; preds = %51, %33
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (i8*, i32, i32, ...) @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @ceph_frag_make(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ceph_frag_contains_value(i32, i32) #1

declare dso_local %struct.ceph_inode_frag* @__ceph_find_frag(%struct.ceph_inode_info*, i32) #1

declare dso_local i32 @memcpy(%struct.ceph_inode_frag*, %struct.ceph_inode_frag*, i32) #1

declare dso_local i32 @dout(i8*, i32, i32, ...) #1

declare dso_local i32 @ceph_frag_make_child(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
