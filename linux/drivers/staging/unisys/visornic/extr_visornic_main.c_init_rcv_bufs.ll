; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_init_rcv_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_init_rcv_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.visornic_devdata = type { i32, i32**, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.visornic_devdata*)* @init_rcv_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rcv_bufs(%struct.net_device* %0, %struct.visornic_devdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.visornic_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.visornic_devdata* %1, %struct.visornic_devdata** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.visornic_devdata*, %struct.visornic_devdata** %5, align 8
  %13 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i32* @alloc_rcv_buf(%struct.net_device* %17)
  %19 = load %struct.visornic_devdata*, %struct.visornic_devdata** %5, align 8
  %20 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  store i32* %18, i32** %24, align 8
  %25 = load %struct.visornic_devdata*, %struct.visornic_devdata** %5, align 8
  %26 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %16
  br label %38

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %10

38:                                               ; preds = %33, %10
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %134

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.visornic_devdata*, %struct.visornic_devdata** %5, align 8
  %48 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 2, %49
  %51 = sdiv i32 %50, 3
  %52 = icmp slt i32 %46, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %73, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load %struct.visornic_devdata*, %struct.visornic_devdata** %5, align 8
  %60 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %59, i32 0, i32 1
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @kfree_skb(i32* %65)
  %67 = load %struct.visornic_devdata*, %struct.visornic_devdata** %5, align 8
  %68 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %54

76:                                               ; preds = %54
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %134

79:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %130, %79
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %133

84:                                               ; preds = %80
  %85 = load %struct.visornic_devdata*, %struct.visornic_devdata** %5, align 8
  %86 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.visornic_devdata*, %struct.visornic_devdata** %5, align 8
  %89 = load %struct.visornic_devdata*, %struct.visornic_devdata** %5, align 8
  %90 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @post_skb(i32 %87, %struct.visornic_devdata* %88, i32* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %84
  br label %130

100:                                              ; preds = %84
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %121, %100
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %102
  %107 = load %struct.visornic_devdata*, %struct.visornic_devdata** %5, align 8
  %108 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %107, i32 0, i32 1
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @kfree_skb(i32* %113)
  %115 = load %struct.visornic_devdata*, %struct.visornic_devdata** %5, align 8
  %116 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %106
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %102

124:                                              ; preds = %102
  %125 = load i32, i32* %6, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %3, align 4
  br label %134

129:                                              ; preds = %124
  br label %133

130:                                              ; preds = %99
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %80

133:                                              ; preds = %129, %80
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %127, %76, %41
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32* @alloc_rcv_buf(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @post_skb(i32, %struct.visornic_devdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
