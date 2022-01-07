; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_cumana_2.c_cumanascsi_2_dma_pseudo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_cumana_2.c_cumanascsi_2_dma_pseudo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.scsi_pointer = type { i32, i8* }
%struct.cumanascsi2_info = type { i64 }

@DMA_OUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"PSEUDO_OUT???\0A\00", align 1
@CUMANASCSI2_STATUS = common dso_local global i64 0, align 8
@STATUS_INT = common dso_local global i32 0, align 4
@STATUS_DRQ = common dso_local global i32 0, align 4
@CUMANASCSI2_PSEUDODMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, %struct.scsi_pointer*, i64, i32)* @cumanascsi_2_dma_pseudo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cumanascsi_2_dma_pseudo(%struct.Scsi_Host* %0, %struct.scsi_pointer* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.scsi_pointer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cumanascsi2_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store %struct.scsi_pointer* %1, %struct.scsi_pointer** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.cumanascsi2_info*
  store %struct.cumanascsi2_info* %18, %struct.cumanascsi2_info** %9, align 8
  %19 = load %struct.scsi_pointer*, %struct.scsi_pointer** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.scsi_pointer*, %struct.scsi_pointer** %6, align 8
  %23 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %11, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @DMA_OUT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = call i32 @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %118

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 255
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %59, %58, %37
  %39 = load i32, i32* %10, align 4
  %40 = icmp uge i32 %39, 256
  br i1 %40, label %41, label %71

41:                                               ; preds = %38
  %42 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %9, align 8
  %43 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CUMANASCSI2_STATUS, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readb(i64 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @STATUS_INT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %118

53:                                               ; preds = %41
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @STATUS_DRQ, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %38

59:                                               ; preds = %53
  %60 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %9, align 8
  %61 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CUMANASCSI2_PSEUDODMA, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @readsw(i64 %64, i8* %65, i32 128)
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 256
  store i8* %68, i8** %11, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sub i32 %69, 256
  store i32 %70, i32* %10, align 4
  br label %38

71:                                               ; preds = %38
  br label %72

72:                                               ; preds = %71, %33, %30
  br label %73

73:                                               ; preds = %116, %93, %72
  %74 = load i32, i32* %10, align 4
  %75 = icmp ugt i32 %74, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %73
  %77 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %9, align 8
  %78 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CUMANASCSI2_STATUS, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @readb(i64 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @STATUS_INT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %118

88:                                               ; preds = %76
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @STATUS_DRQ, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %73

94:                                               ; preds = %88
  %95 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %9, align 8
  %96 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CUMANASCSI2_PSEUDODMA, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i64 @readw(i64 %99)
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %13, align 8
  %102 = trunc i64 %101 to i8
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %11, align 8
  store i8 %102, i8* %103, align 1
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, -1
  store i32 %106, i32* %10, align 4
  %107 = icmp ugt i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %94
  %109 = load i64, i64* %13, align 8
  %110 = lshr i64 %109, 8
  %111 = trunc i64 %110 to i8
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %11, align 8
  store i8 %111, i8* %112, align 1
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %114, -1
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %108, %94
  br label %73

117:                                              ; preds = %73
  br label %118

118:                                              ; preds = %52, %87, %117, %28
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @readsw(i64, i8*, i32) #1

declare dso_local i64 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
