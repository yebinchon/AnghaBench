; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_rxtx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_rxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo_vring = type { i32, %struct.mlxbf_tmfifo* }
%struct.mlxbf_tmfifo = type { %struct.mlxbf_tmfifo_vring**, i32* }

@VIRTIO_ID_NET = common dso_local global i32 0, align 4
@VIRTIO_ID_CONSOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxbf_tmfifo_vring*, i32)* @mlxbf_tmfifo_rxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_rxtx(%struct.mlxbf_tmfifo_vring* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxbf_tmfifo*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxbf_tmfifo_vring* %0, %struct.mlxbf_tmfifo_vring** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %10 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %13 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %12, i32 0, i32 1
  %14 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %13, align 8
  store %struct.mlxbf_tmfifo* %14, %struct.mlxbf_tmfifo** %7, align 8
  %15 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %7, align 8
  %16 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %95

24:                                               ; preds = %2
  %25 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %7, align 8
  %26 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %25, i32 0, i32 0
  %27 = load %struct.mlxbf_tmfifo_vring**, %struct.mlxbf_tmfifo_vring*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %27, i64 %29
  %31 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %30, align 8
  %32 = icmp ne %struct.mlxbf_tmfifo_vring* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %24
  %34 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %7, align 8
  %35 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %34, i32 0, i32 0
  %36 = load %struct.mlxbf_tmfifo_vring**, %struct.mlxbf_tmfifo_vring*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %36, i64 %38
  %40 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %39, align 8
  %41 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %42 = icmp ne %struct.mlxbf_tmfifo_vring* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %95

44:                                               ; preds = %33, %24
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @VIRTIO_ID_NET, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @VIRTIO_ID_CONSOLE, align 4
  %51 = icmp ne i32 %49, %50
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ false, %44 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %95

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %92, %58
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %7, align 8
  %67 = call i32 @mlxbf_tmfifo_get_rx_avail(%struct.mlxbf_tmfifo* %66)
  store i32 %67, i32* %5, align 4
  br label %72

68:                                               ; preds = %62
  %69 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %7, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @mlxbf_tmfifo_get_tx_avail(%struct.mlxbf_tmfifo* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %5, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %95

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %59
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @VIRTIO_ID_CONSOLE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %7, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @mlxbf_tmfifo_console_tx(%struct.mlxbf_tmfifo* %85, i32 %86)
  br label %95

88:                                               ; preds = %80, %77
  %89 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @mlxbf_tmfifo_rxtx_one_desc(%struct.mlxbf_tmfifo_vring* %89, i32 %90, i32* %5)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %59, label %95

95:                                               ; preds = %23, %43, %57, %92, %84, %75
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mlxbf_tmfifo_get_rx_avail(%struct.mlxbf_tmfifo*) #1

declare dso_local i32 @mlxbf_tmfifo_get_tx_avail(%struct.mlxbf_tmfifo*, i32) #1

declare dso_local i32 @mlxbf_tmfifo_console_tx(%struct.mlxbf_tmfifo*, i32) #1

declare dso_local i32 @mlxbf_tmfifo_rxtx_one_desc(%struct.mlxbf_tmfifo_vring*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
