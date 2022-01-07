; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_common.c_scsi_normalize_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_common.c_scsi_normalize_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_hdr = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_normalize_sense(i32* %0, i32 %1, %struct.scsi_sense_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_sense_hdr*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.scsi_sense_hdr* %2, %struct.scsi_sense_hdr** %7, align 8
  %8 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %9 = call i32 @memset(%struct.scsi_sense_hdr* %8, i32 0, i32 20)
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %119

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 127
  %21 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %24 = call i32 @scsi_sense_valid(%struct.scsi_sense_hdr* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %119

27:                                               ; preds = %16
  %28 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %29 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 114
  br i1 %31, label %32, label %70

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 15
  %40 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %41 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %32
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 2
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %50 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 3
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %59 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %61, 7
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %68 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %60
  br label %118

70:                                               ; preds = %27
  %71 = load i32, i32* %6, align 4
  %72 = icmp sgt i32 %71, 2
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 15
  %78 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %79 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %70
  %81 = load i32, i32* %6, align 4
  %82 = icmp sgt i32 %81, 7
  br i1 %82, label %83, label %117

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 7
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 8
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  br label %97

92:                                               ; preds = %83
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 7
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 8
  br label %97

97:                                               ; preds = %92, %90
  %98 = phi i32 [ %91, %90 ], [ %96, %92 ]
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp sgt i32 %99, 12
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 12
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %106 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %97
  %108 = load i32, i32* %6, align 4
  %109 = icmp sgt i32 %108, 13
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 13
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %7, align 8
  %115 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %110, %107
  br label %117

117:                                              ; preds = %116, %80
  br label %118

118:                                              ; preds = %117, %69
  store i32 1, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %26, %15
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @memset(%struct.scsi_sense_hdr*, i32, i32) #1

declare dso_local i32 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
