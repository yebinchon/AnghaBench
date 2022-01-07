; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_wwid_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_wwid_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nvme_ns_head = type { i32, %struct.nvme_subsystem*, %struct.nvme_ns_ids }
%struct.nvme_subsystem = type { i8*, i8*, i32 }
%struct.nvme_ns_ids = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"uuid.%pU\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"eui.%16phN\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"eui.%8phN\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"nvme.%04x-%*phN-%*phN-%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @wwid_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wwid_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nvme_ns_head*, align 8
  %9 = alloca %struct.nvme_ns_ids*, align 8
  %10 = alloca %struct.nvme_subsystem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.nvme_ns_head* @dev_to_ns_head(%struct.device* %13)
  store %struct.nvme_ns_head* %14, %struct.nvme_ns_head** %8, align 8
  %15 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %16 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %15, i32 0, i32 2
  store %struct.nvme_ns_ids* %16, %struct.nvme_ns_ids** %9, align 8
  %17 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %18 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %17, i32 0, i32 1
  %19 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %18, align 8
  store %struct.nvme_subsystem* %19, %struct.nvme_subsystem** %10, align 8
  store i32 8, i32* %11, align 4
  store i32 8, i32* %12, align 4
  %20 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %9, align 8
  %21 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %20, i32 0, i32 2
  %22 = call i32 @uuid_is_null(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %9, align 8
  %27 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %26, i32 0, i32 2
  %28 = ptrtoint i32* %27 to i32
  %29 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %4, align 4
  br label %137

30:                                               ; preds = %3
  %31 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %9, align 8
  %32 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @memchr_inv(i32 %33, i32 0, i32 4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %9, align 8
  %39 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %4, align 4
  br label %137

42:                                               ; preds = %30
  %43 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %9, align 8
  %44 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @memchr_inv(i32 %45, i32 0, i32 4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.nvme_ns_ids*, %struct.nvme_ns_ids** %9, align 8
  %51 = getelementptr inbounds %struct.nvme_ns_ids, %struct.nvme_ns_ids* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %4, align 4
  br label %137

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %84, %54
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %55
  %59 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %10, align 8
  %60 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %80, label %69

69:                                               ; preds = %58
  %70 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %10, align 8
  %71 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br label %80

80:                                               ; preds = %69, %58
  %81 = phi i1 [ true, %58 ], [ %79, %69 ]
  br label %82

82:                                               ; preds = %80, %55
  %83 = phi i1 [ false, %55 ], [ %81, %80 ]
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %11, align 4
  br label %55

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %117, %87
  %89 = load i32, i32* %12, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %115

91:                                               ; preds = %88
  %92 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %10, align 8
  %93 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 32
  br i1 %101, label %113, label %102

102:                                              ; preds = %91
  %103 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %10, align 8
  %104 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br label %113

113:                                              ; preds = %102, %91
  %114 = phi i1 [ true, %91 ], [ %112, %102 ]
  br label %115

115:                                              ; preds = %113, %88
  %116 = phi i1 [ false, %88 ], [ %114, %113 ]
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %12, align 4
  br label %88

120:                                              ; preds = %115
  %121 = load i8*, i8** %7, align 8
  %122 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %10, align 8
  %123 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %10, align 8
  %127 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.nvme_subsystem*, %struct.nvme_subsystem** %10, align 8
  %131 = getelementptr inbounds %struct.nvme_subsystem, %struct.nvme_subsystem* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.nvme_ns_head*, %struct.nvme_ns_head** %8, align 8
  %134 = getelementptr inbounds %struct.nvme_ns_head, %struct.nvme_ns_head* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %125, i8* %128, i32 %129, i8* %132, i32 %135)
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %120, %48, %36, %24
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.nvme_ns_head* @dev_to_ns_head(%struct.device*) #1

declare dso_local i32 @uuid_is_null(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i64 @memchr_inv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
