; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_libsrp.c_srp_get_desc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_libsrp.c_srp_get_desc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_cmd = type { i32, i32, i32* }
%struct.srp_indirect_buf = type { i32 }
%struct.srp_direct_buf = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SRP_DATA_DESC_DIRECT = common dso_local global i32 0, align 4
@SRP_DATA_DESC_INDIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @srp_get_desc_table(%struct.srp_cmd* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.srp_cmd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.srp_indirect_buf*, align 8
  %8 = alloca %struct.srp_direct_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.srp_cmd* %0, %struct.srp_cmd** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.srp_cmd*, %struct.srp_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @__same_type(i32 %15, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load %struct.srp_cmd*, %struct.srp_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__same_type(i32 %23, i32 0)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %18, %3
  %28 = phi i1 [ false, %3 ], [ %26, %18 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUILD_BUG_ON(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = icmp ne i32* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  store i32 0, i32* %10, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* @DMA_NONE, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.srp_cmd*, %struct.srp_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 15
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %27
  %50 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  br label %62

52:                                               ; preds = %27
  %53 = load %struct.srp_cmd*, %struct.srp_cmd** %4, align 8
  %54 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %52
  br label %62

62:                                               ; preds = %61, %49
  %63 = load %struct.srp_cmd*, %struct.srp_cmd** %4, align 8
  %64 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, -4
  store i32 %66, i32* %9, align 4
  %67 = load %struct.srp_cmd*, %struct.srp_cmd** %4, align 8
  %68 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 15
  %71 = load i32, i32* @SRP_DATA_DESC_DIRECT, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %62
  %74 = load %struct.srp_cmd*, %struct.srp_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 4
  %78 = load i32, i32* @SRP_DATA_DESC_DIRECT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %73, %62
  %81 = load %struct.srp_cmd*, %struct.srp_cmd** %4, align 8
  %82 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = bitcast i32* %86 to %struct.srp_direct_buf*
  store %struct.srp_direct_buf* %87, %struct.srp_direct_buf** %8, align 8
  %88 = load %struct.srp_direct_buf*, %struct.srp_direct_buf** %8, align 8
  %89 = getelementptr inbounds %struct.srp_direct_buf, %struct.srp_direct_buf* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @be32_to_cpu(i32 %90)
  %92 = load i32*, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  br label %121

93:                                               ; preds = %73
  %94 = load %struct.srp_cmd*, %struct.srp_cmd** %4, align 8
  %95 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, 15
  %98 = load i32, i32* @SRP_DATA_DESC_INDIRECT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load %struct.srp_cmd*, %struct.srp_cmd** %4, align 8
  %102 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = ashr i32 %103, 4
  %105 = load i32, i32* @SRP_DATA_DESC_INDIRECT, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %100, %93
  %108 = load %struct.srp_cmd*, %struct.srp_cmd** %4, align 8
  %109 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = bitcast i32* %113 to %struct.srp_indirect_buf*
  store %struct.srp_indirect_buf* %114, %struct.srp_indirect_buf** %7, align 8
  %115 = load %struct.srp_indirect_buf*, %struct.srp_indirect_buf** %7, align 8
  %116 = getelementptr inbounds %struct.srp_indirect_buf, %struct.srp_indirect_buf* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @be32_to_cpu(i32 %117)
  %119 = load i32*, i32** %6, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %107, %100
  br label %121

121:                                              ; preds = %120, %80
  %122 = load i32, i32* %10, align 4
  ret i32 %122
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @__same_type(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
