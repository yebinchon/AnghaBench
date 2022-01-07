; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_alloc_bsg_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_alloc_bsg_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_dmabuf = type { i32, i32, i32 }
%struct.lpfc_hba = type { i32 }
%struct.ulp_bde64 = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@LPFC_BPL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MEM_PRI = common dso_local global i32 0, align 4
@BUFF_TYPE_BDE_64 = common dso_local global i32 0, align 4
@BUFF_TYPE_BDE_64I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_dmabuf* (%struct.lpfc_hba*, i32, i32, %struct.ulp_bde64*, i32*)* @lpfc_alloc_bsg_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba* %0, i32 %1, i32 %2, %struct.ulp_bde64* %3, i32* %4) #0 {
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ulp_bde64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ulp_bde64* %3, %struct.ulp_bde64** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %12, align 8
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = icmp ugt i32 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %5
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %6, align 8
  br label %160

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %29 = urem i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %34 = udiv i32 %32, %33
  %35 = add i32 %34, 1
  br label %40

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %39 = udiv i32 %37, %38
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i32 [ %35, %31 ], [ %39, %36 ]
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %132, %40
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %158

46:                                               ; preds = %43
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.lpfc_dmabuf* @kmalloc(i32 12, i32 %47)
  store %struct.lpfc_dmabuf* %48, %struct.lpfc_dmabuf** %13, align 8
  %49 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %50 = icmp ne %struct.lpfc_dmabuf* %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %53 = icmp ne %struct.lpfc_dmabuf* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %56 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %57 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %55, %struct.lpfc_dmabuf* %56)
  br label %58

58:                                               ; preds = %54, %51
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %6, align 8
  br label %160

59:                                               ; preds = %46
  %60 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %61 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %60, i32 0, i32 1
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %64 = load i32, i32* @MEM_PRI, align 4
  %65 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %66 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %65, i32 0, i32 0
  %67 = call i32 @lpfc_mbuf_alloc(%struct.lpfc_hba* %63, i32 %64, i32* %66)
  %68 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %69 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %71 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %59
  %75 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %76 = call i32 @kfree(%struct.lpfc_dmabuf* %75)
  %77 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %78 = icmp ne %struct.lpfc_dmabuf* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %81 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %82 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %80, %struct.lpfc_dmabuf* %81)
  br label %83

83:                                               ; preds = %79, %74
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %6, align 8
  br label %160

84:                                               ; preds = %59
  %85 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %86 = icmp ne %struct.lpfc_dmabuf* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  store %struct.lpfc_dmabuf* %88, %struct.lpfc_dmabuf** %12, align 8
  br label %95

89:                                               ; preds = %84
  %90 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %91 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %90, i32 0, i32 1
  %92 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %93 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %92, i32 0, i32 1
  %94 = call i32 @list_add_tail(i32* %91, i32* %93)
  br label %95

95:                                               ; preds = %89, %87
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* @BUFF_TYPE_BDE_64, align 4
  %100 = load %struct.ulp_bde64*, %struct.ulp_bde64** %10, align 8
  %101 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 %99, i32* %103, align 8
  br label %110

104:                                              ; preds = %95
  %105 = load i32, i32* @BUFF_TYPE_BDE_64I, align 4
  %106 = load %struct.ulp_bde64*, %struct.ulp_bde64** %10, align 8
  %107 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 8
  br label %110

110:                                              ; preds = %104, %98
  %111 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %112 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @putPaddrLow(i32 %113)
  %115 = call i8* @le32_to_cpu(i8* %114)
  %116 = load %struct.ulp_bde64*, %struct.ulp_bde64** %10, align 8
  %117 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %119 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @putPaddrHigh(i32 %120)
  %122 = call i8* @le32_to_cpu(i8* %121)
  %123 = load %struct.ulp_bde64*, %struct.ulp_bde64** %10, align 8
  %124 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %127 = icmp uge i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %110
  %129 = load i32, i32* @LPFC_BPL_SIZE, align 4
  br label %132

130:                                              ; preds = %110
  %131 = load i32, i32* %14, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = zext i32 %133 to i64
  %135 = load %struct.ulp_bde64*, %struct.ulp_bde64** %10, align 8
  %136 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store i64 %134, i64* %138, align 8
  %139 = load %struct.ulp_bde64*, %struct.ulp_bde64** %10, align 8
  %140 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = zext i32 %144 to i64
  %146 = sub nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %14, align 4
  %148 = load %struct.ulp_bde64*, %struct.ulp_bde64** %10, align 8
  %149 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i8* @le32_to_cpu(i8* %151)
  %153 = load %struct.ulp_bde64*, %struct.ulp_bde64** %10, align 8
  %154 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  %156 = load %struct.ulp_bde64*, %struct.ulp_bde64** %10, align 8
  %157 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %156, i32 1
  store %struct.ulp_bde64* %157, %struct.ulp_bde64** %10, align 8
  br label %43

158:                                              ; preds = %43
  %159 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  store %struct.lpfc_dmabuf* %159, %struct.lpfc_dmabuf** %6, align 8
  br label %160

160:                                              ; preds = %158, %83, %58, %25
  %161 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  ret %struct.lpfc_dmabuf* %161
}

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i8* @putPaddrHigh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
