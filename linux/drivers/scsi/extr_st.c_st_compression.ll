; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_compression.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_st_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i64, i8, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@ST_READY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@COMPRESSION_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Compression mode page not supported.\0A\00", align 1
@MODE_HEADER_LENGTH = common dso_local global i8 0, align 1
@MH_OFF_BDESCS_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Compression state is %d.\0A\00", align 1
@CP_OFF_DCE_DCC = common dso_local global i32 0, align 4
@DCE_MASK = common dso_local global i8 0, align 1
@DCC_MASK = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Compression not supported.\0A\00", align 1
@CP_OFF_C_ALGO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Compression change failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Compression state changed to %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*, i32)* @st_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_compression(%struct.scsi_tape* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_tape*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.scsi_tape* %0, %struct.scsi_tape** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ST_READY, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %151

22:                                               ; preds = %2
  %23 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %24 = load i32, i32* @COMPRESSION_PAGE, align 4
  %25 = call i32 @read_mode_page(%struct.scsi_tape* %23, i32 %24, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %30 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %151

33:                                               ; preds = %22
  %34 = load i8, i8* @MODE_HEADER_LENGTH, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* @MH_OFF_BDESCS_LENGTH, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %35, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @CP_OFF_DCE_DCC, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @DCE_MASK, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  %57 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @CP_OFF_DCE_DCC, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @DCC_MASK, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %65, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %33
  %71 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %72 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %151

75:                                               ; preds = %33
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %75
  %79 = load i8, i8* @DCE_MASK, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @CP_OFF_DCE_DCC, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %88, %80
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %86, align 1
  %91 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %92 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %91, i32 0, i32 1
  %93 = load i8, i8* %92, align 8
  %94 = zext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %78
  %97 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %98 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %97, i32 0, i32 1
  %99 = load i8, i8* %98, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @CP_OFF_C_ALGO, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %100, i64 %104
  store i8 %99, i8* %105, align 1
  br label %106

106:                                              ; preds = %96, %78
  br label %134

107:                                              ; preds = %75
  %108 = load i8, i8* @DCE_MASK, align 1
  %109 = zext i8 %108 to i32
  %110 = xor i32 %109, -1
  %111 = load i8*, i8** %8, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @CP_OFF_DCE_DCC, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %111, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %118, %110
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %116, align 1
  %121 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %122 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %121, i32 0, i32 1
  %123 = load i8, i8* %122, align 8
  %124 = zext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %107
  %127 = load i8*, i8** %8, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @CP_OFF_C_ALGO, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %127, i64 %131
  store i8 0, i8* %132, align 1
  br label %133

133:                                              ; preds = %126, %107
  br label %134

134:                                              ; preds = %133, %106
  %135 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %136 = load i32, i32* @COMPRESSION_PAGE, align 4
  %137 = call i32 @write_mode_page(%struct.scsi_tape* %135, i32 %136, i32 0)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %142 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %141, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %143 = load i32, i32* @EIO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %151

145:                                              ; preds = %134
  %146 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %147 = load i32, i32* %5, align 4
  %148 = call i32 (%struct.scsi_tape*, i8*, ...) @DEBC_printk(%struct.scsi_tape* %146, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  %149 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %150 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %149, i32 0, i32 2
  store i32 1, i32* %150, align 4
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %145, %140, %70, %28, %19
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @read_mode_page(%struct.scsi_tape*, i32, i32) #1

declare dso_local i32 @DEBC_printk(%struct.scsi_tape*, i8*, ...) #1

declare dso_local i32 @write_mode_page(%struct.scsi_tape*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
