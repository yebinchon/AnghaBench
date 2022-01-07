; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_trace.c_scsi_trace_rw32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_trace.c_scsi_trace_rw32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"VERIFY\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"WRITE_SAME\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"%s_32 lba=%llu txlen=%llu protect=%u ei_lbrt=%u\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" unmap=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.trace_seq*, i8*, i32)* @scsi_trace_rw32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scsi_trace_rw32(%struct.trace_seq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %13 = call i8* @trace_seq_buffer_ptr(%struct.trace_seq* %12)
  store i8* %13, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8 0, i8* %11, align 1
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @SERVICE_ACTION32(i8* %14)
  switch i32 %15, label %20 [
    i32 131, label %16
    i32 130, label %17
    i32 129, label %18
    i32 128, label %19
  ]

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %23

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %23

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %23

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %23

20:                                               ; preds = %3
  %21 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %22 = call i32 @trace_seq_puts(%struct.trace_seq* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %168

23:                                               ; preds = %19, %18, %17, %16
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 12
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 56
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 13
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 48
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 14
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 40
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 15
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 32
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 16
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 24
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 17
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 16
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 18
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 8
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 19
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 20
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl i32 %82, 24
  %84 = load i8, i8* %11, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %85, %83
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %11, align 1
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 21
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 16
  %93 = load i8, i8* %11, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %94, %92
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %11, align 1
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 22
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl i32 %100, 8
  %102 = load i8, i8* %11, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, %101
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %11, align 1
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 23
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8, i8* %11, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %111, %109
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %11, align 1
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 28
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = shl i32 %117, 24
  %119 = load i32, i32* %10, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 29
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = shl i32 %124, 16
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 30
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = shl i32 %131, 8
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %10, align 4
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 31
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  %141 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 10
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = ashr i32 %150, 5
  %152 = load i8, i8* %11, align 1
  %153 = zext i8 %152 to i32
  %154 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %141, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %142, i64 %144, i64 %146, i32 %151, i32 %153)
  %155 = load i8*, i8** %5, align 8
  %156 = call i32 @SERVICE_ACTION32(i8* %155)
  %157 = icmp eq i32 %156, 128
  br i1 %157, label %158, label %167

158:                                              ; preds = %23
  %159 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 10
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = ashr i32 %163, 3
  %165 = and i32 %164, 1
  %166 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %159, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %158, %23
  br label %168

168:                                              ; preds = %167, %20
  %169 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %170 = call i32 @trace_seq_putc(%struct.trace_seq* %169, i32 0)
  %171 = load i8*, i8** %7, align 8
  ret i8* %171
}

declare dso_local i8* @trace_seq_buffer_ptr(%struct.trace_seq*) #1

declare dso_local i32 @SERVICE_ACTION32(i8*) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
