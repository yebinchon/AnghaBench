; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_flush_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_flush_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i64, i64, i32, %struct.TYPE_2__*, %struct.st_partstat*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.st_partstat = type { i64, i64, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@ST_READY = common dso_local global i64 0, align 8
@ST_WRITING = common dso_local global i64 0, align 8
@ST_FM_HIT = common dso_local global i64 0, align 8
@ST_NOEOF = common dso_local global i8* null, align 8
@MTBSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*, i32)* @flush_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_buffer(%struct.scsi_tape* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_tape*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_partstat*, align 8
  store %struct.scsi_tape* %0, %struct.scsi_tape** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %154

16:                                               ; preds = %2
  %17 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ST_READY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %154

23:                                               ; preds = %16
  %24 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %24, i32 0, i32 4
  %26 = load %struct.st_partstat*, %struct.st_partstat** %25, align 8
  %27 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %26, i64 %29
  store %struct.st_partstat* %30, %struct.st_partstat** %8, align 8
  %31 = load %struct.st_partstat*, %struct.st_partstat** %8, align 8
  %32 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ST_WRITING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %38 = call i32 @st_flush_write_buffer(%struct.scsi_tape* %37)
  store i32 %38, i32* %3, align 4
  br label %154

39:                                               ; preds = %23
  %40 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %41 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %154

45:                                               ; preds = %39
  %46 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %47 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %50, %55
  %57 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %58 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %56, %59
  %61 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %67 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %65, %68
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %72 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sdiv i32 %70, %73
  %75 = sub nsw i32 %60, %74
  store i32 %75, i32* %6, align 4
  %76 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %77 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  %80 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %81 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  store i32 0, i32* %7, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %128, label %86

86:                                               ; preds = %45
  %87 = load %struct.st_partstat*, %struct.st_partstat** %8, align 8
  %88 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ST_FM_HIT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %86
  %93 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %94 = call i32 @cross_eof(%struct.scsi_tape* %93, i32 0)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** @ST_NOEOF, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = load %struct.st_partstat*, %struct.st_partstat** %8, align 8
  %101 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  br label %115

102:                                              ; preds = %92
  %103 = load %struct.st_partstat*, %struct.st_partstat** %8, align 8
  %104 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.st_partstat*, %struct.st_partstat** %8, align 8
  %109 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %107, %102
  %113 = load %struct.st_partstat*, %struct.st_partstat** %8, align 8
  %114 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %112, %97
  br label %116

116:                                              ; preds = %115, %86
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.scsi_tape*, %struct.scsi_tape** %4, align 8
  %124 = load i32, i32* @MTBSR, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @st_int_ioctl(%struct.scsi_tape* %123, i32 %124, i32 %125)
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %122, %119, %116
  br label %152

128:                                              ; preds = %45
  %129 = load %struct.st_partstat*, %struct.st_partstat** %8, align 8
  %130 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ST_FM_HIT, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %128
  %135 = load %struct.st_partstat*, %struct.st_partstat** %8, align 8
  %136 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp sge i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.st_partstat*, %struct.st_partstat** %8, align 8
  %141 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %141, align 8
  br label %144

144:                                              ; preds = %139, %134
  %145 = load %struct.st_partstat*, %struct.st_partstat** %8, align 8
  %146 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %145, i32 0, i32 3
  store i64 0, i64* %146, align 8
  %147 = load i8*, i8** @ST_NOEOF, align 8
  %148 = ptrtoint i8* %147 to i64
  %149 = load %struct.st_partstat*, %struct.st_partstat** %8, align 8
  %150 = getelementptr inbounds %struct.st_partstat, %struct.st_partstat* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %144, %128
  br label %152

152:                                              ; preds = %151, %127
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %44, %36, %22, %13
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @st_flush_write_buffer(%struct.scsi_tape*) #1

declare dso_local i32 @cross_eof(%struct.scsi_tape*, i32) #1

declare dso_local i32 @st_int_ioctl(%struct.scsi_tape*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
