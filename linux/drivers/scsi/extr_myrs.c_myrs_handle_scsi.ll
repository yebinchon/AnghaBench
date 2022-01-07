; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_handle_scsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_handle_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { i32, i32, i32 }
%struct.myrs_cmdblk = type { i8, i32, i32, i64, i32*, i64, i32*, i64, i32* }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, i32 }

@MYRS_STATUS_FAILED = common dso_local global i8 0, align 1
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@MYRS_STATUS_DEVICE_NON_RESPONSIVE = common dso_local global i8 0, align 1
@MYRS_STATUS_DEVICE_NON_RESPONSIVE2 = common dso_local global i8 0, align 1
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrs_hba*, %struct.myrs_cmdblk*, %struct.scsi_cmnd*)* @myrs_handle_scsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrs_handle_scsi(%struct.myrs_hba* %0, %struct.myrs_cmdblk* %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca %struct.myrs_hba*, align 8
  %5 = alloca %struct.myrs_cmdblk*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.myrs_hba* %0, %struct.myrs_hba** %4, align 8
  store %struct.myrs_cmdblk* %1, %struct.myrs_cmdblk** %5, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %6, align 8
  %9 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %10 = icmp ne %struct.myrs_cmdblk* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %150

12:                                               ; preds = %3
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %14 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %13)
  %15 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %16 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 8
  store i8 %17, i8* %7, align 1
  %18 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %19 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %18, i32 0, i32 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %68

22:                                               ; preds = %12
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @MYRS_STATUS_FAILED, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  %29 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %30 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %37 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ugt i32 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %42 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %49 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %48, i32 0, i32 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @memcpy(i32 %47, i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %28, %22
  %54 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %55 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %58 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %57, i32 0, i32 8
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %61 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dma_pool_free(i32 %56, i32* %59, i64 %62)
  %64 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %65 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %64, i32 0, i32 8
  store i32* null, i32** %65, align 8
  %66 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %67 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %66, i32 0, i32 7
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %53, %12
  %69 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %70 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %75 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %78 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %77, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %81 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @dma_pool_free(i32 %76, i32* %79, i64 %82)
  %84 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %85 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %84, i32 0, i32 6
  store i32* null, i32** %85, align 8
  %86 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %87 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %86, i32 0, i32 5
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %73, %68
  %89 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %90 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %95 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %98 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %101 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @dma_pool_free(i32 %96, i32* %99, i64 %102)
  %104 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %105 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %104, i32 0, i32 4
  store i32* null, i32** %105, align 8
  %106 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %107 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %93, %88
  %109 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %110 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %115 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %5, align 8
  %116 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %114, i32 %117)
  br label %119

119:                                              ; preds = %113, %108
  %120 = load i8, i8* %7, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* @MYRS_STATUS_DEVICE_NON_RESPONSIVE, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load i8, i8* %7, align 1
  %127 = zext i8 %126 to i32
  %128 = load i8, i8* @MYRS_STATUS_DEVICE_NON_RESPONSIVE2, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %125, %119
  %132 = load i32, i32* @DID_BAD_TARGET, align 4
  %133 = shl i32 %132, 16
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %135 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %144

136:                                              ; preds = %125
  %137 = load i32, i32* @DID_OK, align 4
  %138 = shl i32 %137, 16
  %139 = load i8, i8* %7, align 1
  %140 = zext i8 %139 to i32
  %141 = or i32 %138, %140
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %143 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %136, %131
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %146 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %145, i32 0, i32 1
  %147 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %146, align 8
  %148 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %149 = call i32 %147(%struct.scsi_cmnd* %148)
  br label %150

150:                                              ; preds = %144, %11
  ret void
}

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dma_pool_free(i32, i32*, i64) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
