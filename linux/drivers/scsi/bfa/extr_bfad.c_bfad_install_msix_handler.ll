; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_install_msix_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_install_msix_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i8*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"bfa-%s-%s\00", align 1
@msix_name_cb = common dso_local global i8** null, align 8
@msix_name_ct = common dso_local global i8** null, align 8
@bfad_msix = common dso_local global i64 0, align 8
@BFAD_MSIX_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_install_msix_handler(%struct.bfad_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %125, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %128

13:                                               ; preds = %7
  %14 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %14, i32 0, i32 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @bfa_asic_id_cb(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %13
  %32 = load i8**, i8*** @msix_name_cb, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  br label %43

37:                                               ; preds = %13
  %38 = load i8**, i8*** @msix_name_ct, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = phi i8* [ %36, %31 ], [ %42, %37 ]
  %45 = call i32 @sprintf(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %44)
  %46 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %46, i32 0, i32 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* @bfad_msix, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %57, i32 0, i32 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %65, i32 0, i32 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = call i32 @request_irq(i32 %54, i32 %56, i32 0, i32 %64, %struct.TYPE_7__* %70)
  store i32 %71, i32* %5, align 4
  %72 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @bfa_trc(%struct.bfad_s* %72, i32 %73)
  %75 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %76 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %77 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %76, i32 0, i32 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @bfa_trc(%struct.bfad_s* %75, i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %124

88:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %110, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %89
  %94 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %95 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %94, i32 0, i32 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %104 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %103, i32 0, i32 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = call i32 @free_irq(i32 %102, %struct.TYPE_7__* %108)
  br label %110

110:                                              ; preds = %93
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %89

113:                                              ; preds = %89
  %114 = load i32, i32* @BFAD_MSIX_ON, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %117 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %121 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @pci_disable_msix(i32 %122)
  store i32 1, i32* %2, align 4
  br label %129

124:                                              ; preds = %43
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %7

128:                                              ; preds = %7
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %113
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*) #1

declare dso_local i64 @bfa_asic_id_cb(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @pci_disable_msix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
