; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_shadow_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_shadow_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@dm_shadow = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_shadow_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 5
  br i1 %7, label %8, label %34

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %27, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 %15, 256
  %17 = add nsw i32 %14, %16
  %18 = load i32**, i32*** @dm_shadow, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @read_nic_byte(%struct.net_device* %13, i32 %17, i32* %25)
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %9

30:                                               ; preds = %9
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %5

34:                                               ; preds = %5
  store i32 8, i32* %3, align 4
  br label %35

35:                                               ; preds = %61, %34
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 11
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %57, %38
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 256
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %3, align 4
  %46 = mul nsw i32 %45, 256
  %47 = add nsw i32 %44, %46
  %48 = load i32**, i32*** @dm_shadow, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @read_nic_byte(%struct.net_device* %43, i32 %47, i32* %55)
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %39

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %35

64:                                               ; preds = %35
  store i32 12, i32* %3, align 4
  br label %65

65:                                               ; preds = %91, %64
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 15
  br i1 %67, label %68, label %94

68:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %87, %68
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 256
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %3, align 4
  %76 = mul nsw i32 %75, 256
  %77 = add nsw i32 %74, %76
  %78 = load i32**, i32*** @dm_shadow, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @read_nic_byte(%struct.net_device* %73, i32 %77, i32* %85)
  br label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %69

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %65

94:                                               ; preds = %65
  ret void
}

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
