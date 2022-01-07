; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_check_goals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_check_goals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i64, i32, i64, i64, i64, i64, i64, i64 }
%struct.scsi_target = type { i32 }
%struct.sym_trans = type { i32, i32, i64, i64, i64, i64 }

@SMODE_LVD = common dso_local global i64 0, align 8
@FE_U3EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, %struct.scsi_target*, %struct.sym_trans*)* @sym_check_goals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_check_goals(%struct.sym_hcb* %0, %struct.scsi_target* %1, %struct.sym_trans* %2) #0 {
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca %struct.scsi_target*, align 8
  %6 = alloca %struct.sym_trans*, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store %struct.scsi_target* %1, %struct.scsi_target** %5, align 8
  store %struct.sym_trans* %2, %struct.sym_trans** %6, align 8
  %7 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %8 = call i32 @spi_support_wide(%struct.scsi_target* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %12 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  br label %13

13:                                               ; preds = %10, %3
  %14 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %15 = call i32 @spi_support_sync(%struct.scsi_target* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %19 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %21 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %23 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %25 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  br label %162

26:                                               ; preds = %13
  %27 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %28 = call i64 @spi_support_dt(%struct.scsi_target* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %32 = call i64 @spi_support_dt_only(%struct.scsi_target* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %36 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %39 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %44 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %37
  br label %49

46:                                               ; preds = %26
  %47 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %48 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %45
  %50 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %51 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SMODE_LVD, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %49
  %56 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %57 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FE_U3EN, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55, %49
  %63 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %64 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %55
  %66 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %67 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %65
  %71 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %72 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %74 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %77 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %82 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %85 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %80, %70
  %87 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %88 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %91 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %96 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %99 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %94, %86
  %101 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %102 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %105 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %103, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %110 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %113 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %112, i32 0, i32 3
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %100
  br label %162

115:                                              ; preds = %65
  %116 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %117 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %116, i32 0, i32 4
  store i64 0, i64* %117, align 8
  %118 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %119 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %118, i32 0, i32 5
  store i64 0, i64* %119, align 8
  %120 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %121 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %124 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %115
  %128 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %129 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %132 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %127, %115
  %134 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %135 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %138 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %133
  %142 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %143 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %146 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %145, i32 0, i32 3
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %141, %133
  %148 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %149 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %152 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %151, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = icmp sgt i64 %150, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %157 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %156, i32 0, i32 7
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.sym_trans*, %struct.sym_trans** %6, align 8
  %160 = getelementptr inbounds %struct.sym_trans, %struct.sym_trans* %159, i32 0, i32 3
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %155, %147
  br label %162

162:                                              ; preds = %17, %161, %114
  ret void
}

declare dso_local i32 @spi_support_wide(%struct.scsi_target*) #1

declare dso_local i32 @spi_support_sync(%struct.scsi_target*) #1

declare dso_local i64 @spi_support_dt(%struct.scsi_target*) #1

declare dso_local i64 @spi_support_dt_only(%struct.scsi_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
