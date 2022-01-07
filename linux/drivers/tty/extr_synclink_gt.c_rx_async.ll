; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_rx_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_rx_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i8, i32, i32, i32, i32, %struct.slgt_desc*, %struct.mgsl_icount }
%struct.slgt_desc = type { i8* }
%struct.mgsl_icount = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s rx_async count=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@BIT1 = common dso_local global i8 0, align 1
@BIT0 = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @rx_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_async(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca %struct.mgsl_icount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.slgt_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %14 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %15 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %14, i32 0, i32 8
  store %struct.mgsl_icount* %15, %struct.mgsl_icount** %3, align 8
  %16 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %17 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %16, i32 0, i32 7
  %18 = load %struct.slgt_desc*, %struct.slgt_desc** %17, align 8
  store %struct.slgt_desc* %18, %struct.slgt_desc** %8, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %20 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %191, %1
  %23 = load %struct.slgt_desc*, %struct.slgt_desc** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %23, i64 %25
  %27 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @desc_complete(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %192

31:                                               ; preds = %22
  %32 = load %struct.slgt_desc*, %struct.slgt_desc** %8, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %32, i64 %34
  %36 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @desc_count(i8* %37)
  %39 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %40 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.slgt_desc*, %struct.slgt_desc** %8, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %43, i64 %45
  %47 = getelementptr inbounds %struct.slgt_desc, %struct.slgt_desc* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %50 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  store i8* %53, i8** %6, align 8
  %54 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %55 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @DBGISR(i8* %59)
  %61 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @DBGDATA(%struct.slgt_info* %61, i8* %62, i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %152, %31
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %157

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  store i8 %71, i8* %13, align 1
  %72 = load %struct.mgsl_icount*, %struct.mgsl_icount** %3, align 8
  %73 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  store i32 0, i32* %12, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @BIT1, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* @BIT0, align 1
  %83 = zext i8 %82 to i32
  %84 = add nsw i32 %81, %83
  %85 = and i32 %79, %84
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %7, align 1
  %87 = load i8, i8* %7, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %144

89:                                               ; preds = %69
  %90 = load i8, i8* %7, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @BIT1, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.mgsl_icount*, %struct.mgsl_icount** %3, align 8
  %98 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %114

101:                                              ; preds = %89
  %102 = load i8, i8* %7, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* @BIT0, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.mgsl_icount*, %struct.mgsl_icount** %3, align 8
  %110 = getelementptr inbounds %struct.mgsl_icount, %struct.mgsl_icount* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %108, %101
  br label %114

114:                                              ; preds = %113, %96
  %115 = load i8, i8* %7, align 1
  %116 = zext i8 %115 to i32
  %117 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %118 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %117, i32 0, i32 2
  %119 = load i8, i8* %118, align 8
  %120 = zext i8 %119 to i32
  %121 = and i32 %116, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %152

124:                                              ; preds = %114
  %125 = load i8, i8* %7, align 1
  %126 = zext i8 %125 to i32
  %127 = load i8, i8* @BIT1, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* @TTY_PARITY, align 4
  store i32 %132, i32* %12, align 4
  br label %143

133:                                              ; preds = %124
  %134 = load i8, i8* %7, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8, i8* @BIT0, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @TTY_FRAME, align 4
  store i32 %141, i32* %12, align 4
  br label %142

142:                                              ; preds = %140, %133
  br label %143

143:                                              ; preds = %142, %131
  br label %144

144:                                              ; preds = %143, %69
  %145 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %146 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %145, i32 0, i32 4
  %147 = load i8, i8* %13, align 1
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @tty_insert_flip_char(i32* %146, i8 zeroext %147, i32 %148)
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %144, %123
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 2
  store i32 %154, i32* %9, align 4
  %155 = load i8*, i8** %6, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 2
  store i8* %156, i8** %6, align 8
  br label %65

157:                                              ; preds = %65
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %157
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %164 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %168 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %167, i32 0, i32 5
  %169 = load i64, i64* @jiffies, align 8
  %170 = add nsw i64 %169, 1
  %171 = call i32 @mod_timer(i32* %168, i64 %170)
  br label %192

172:                                              ; preds = %157
  %173 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %174 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %173, i32 0, i32 1
  store i32 0, i32* %174, align 4
  %175 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @free_rbufs(%struct.slgt_info* %175, i32 %176, i32 %177)
  %179 = load i32, i32* %5, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %5, align 4
  %181 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %182 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %180, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %172
  store i32 0, i32* %5, align 4
  br label %186

186:                                              ; preds = %185, %172
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* %4, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %192

191:                                              ; preds = %186
  br label %22

192:                                              ; preds = %190, %161, %22
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %197 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %196, i32 0, i32 4
  %198 = call i32 @tty_flip_buffer_push(i32* %197)
  br label %199

199:                                              ; preds = %195, %192
  ret void
}

declare dso_local i64 @desc_complete(i8*) #1

declare dso_local i32 @desc_count(i8*) #1

declare dso_local i32 @DBGISR(i8*) #1

declare dso_local i32 @DBGDATA(%struct.slgt_info*, i8*, i32, i8*) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i8 zeroext, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @free_rbufs(%struct.slgt_info*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
