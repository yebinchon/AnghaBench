; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_set_t10dif_tags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_set_t10dif_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_dif_context = type { i32*, i32*, i8*, i8* }
%struct.scsi_cmnd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.fw_dif_context*, i32)* @qla24xx_set_t10dif_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_set_t10dif_tags(i32* %0, %struct.fw_dif_context* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fw_dif_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.fw_dif_context* %1, %struct.fw_dif_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.scsi_cmnd* @GET_CMD_SP(i32* %8)
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %7, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %11 = call i32 @scsi_get_prot_type(%struct.scsi_cmnd* %10)
  switch i32 %11, label %135 [
    i32 131, label %12
    i32 129, label %40
    i32 128, label %79
    i32 130, label %96
  ]

12:                                               ; preds = %3
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %14 = call i32 @scsi_get_lba(%struct.scsi_cmnd* %13)
  %15 = and i32 -1, %14
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %18 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @qla2x00_hba_err_chk_enabled(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %135

23:                                               ; preds = %12
  %24 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %25 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 255, i32* %27, align 4
  %28 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %29 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 255, i32* %31, align 4
  %32 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %33 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 255, i32* %35, align 4
  %36 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %37 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  store i32 255, i32* %39, align 4
  br label %135

40:                                               ; preds = %3
  %41 = call i8* @cpu_to_le16(i32 0)
  %42 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %43 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %45 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %49 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %53 = call i32 @scsi_get_lba(%struct.scsi_cmnd* %52)
  %54 = and i32 -1, %53
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %57 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @qla2x00_hba_err_chk_enabled(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %40
  br label %135

62:                                               ; preds = %40
  %63 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %64 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 255, i32* %66, align 4
  %67 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %68 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 255, i32* %70, align 4
  %71 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %72 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 255, i32* %74, align 4
  %75 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %76 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32 255, i32* %78, align 4
  br label %135

79:                                               ; preds = %3
  %80 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %81 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  store i32 0, i32* %83, align 4
  %84 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %85 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32 0, i32* %87, align 4
  %88 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %89 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %93 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 0, i32* %95, align 4
  br label %135

96:                                               ; preds = %3
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %98 = call i32 @scsi_get_lba(%struct.scsi_cmnd* %97)
  %99 = and i32 -1, %98
  %100 = call i8* @cpu_to_le32(i32 %99)
  %101 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %102 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = call i8* @cpu_to_le16(i32 0)
  %104 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %105 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %107 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 0, i32* %109, align 4
  %110 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %111 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 0, i32* %113, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @qla2x00_hba_err_chk_enabled(i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %96
  br label %135

118:                                              ; preds = %96
  %119 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %120 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 255, i32* %122, align 4
  %123 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %124 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 255, i32* %126, align 4
  %127 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %128 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  store i32 255, i32* %130, align 4
  %131 = load %struct.fw_dif_context*, %struct.fw_dif_context** %5, align 8
  %132 = getelementptr inbounds %struct.fw_dif_context, %struct.fw_dif_context* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  store i32 255, i32* %134, align 4
  br label %135

135:                                              ; preds = %3, %118, %117, %79, %62, %61, %23, %22
  ret void
}

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(i32*) #1

declare dso_local i32 @scsi_get_prot_type(%struct.scsi_cmnd*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @scsi_get_lba(%struct.scsi_cmnd*) #1

declare dso_local i32 @qla2x00_hba_err_chk_enabled(i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
