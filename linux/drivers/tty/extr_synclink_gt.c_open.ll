; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, %struct.TYPE_2__, i32, i64, i64, %struct.slgt_info* }
%struct.TYPE_2__ = type { i32, i32, i64, %struct.tty_struct*, i32 }
%struct.tty_struct = type { i32, i32, %struct.slgt_info*, i32 }
%struct.file = type { i32 }

@slgt_device_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: open with invalid line #%d.\0A\00", align 1
@driver_name = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@slgt_device_list = common dso_local global %struct.slgt_info* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s init error=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s open, old ref count = %d\0A\00", align 1
@ASYNC_LOW_LATENCY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"%s block_til_ready rc=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s open rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.slgt_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @slgt_device_count, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @driver_name, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @DBGERR(i8* %20)
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %200

24:                                               ; preds = %2
  %25 = load %struct.slgt_info*, %struct.slgt_info** @slgt_device_list, align 8
  store %struct.slgt_info* %25, %struct.slgt_info** %6, align 8
  br label %26

26:                                               ; preds = %37, %24
  %27 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %28 = icmp ne %struct.slgt_info* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %31 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %32, %33
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i1 [ false, %26 ], [ %34, %29 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %39 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %38, i32 0, i32 6
  %40 = load %struct.slgt_info*, %struct.slgt_info** %39, align 8
  store %struct.slgt_info* %40, %struct.slgt_info** %6, align 8
  br label %26

41:                                               ; preds = %35
  %42 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %43 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @sanity_check(%struct.slgt_info* %42, i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %200

51:                                               ; preds = %41
  %52 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %53 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %58 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %61 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @DBGERR(i8* %63)
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %200

67:                                               ; preds = %51
  %68 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %69 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %70 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %69, i32 0, i32 2
  store %struct.slgt_info* %68, %struct.slgt_info** %70, align 8
  %71 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %72 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %73 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store %struct.tty_struct* %71, %struct.tty_struct** %74, align 8
  %75 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %76 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %79 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32 @DBGINFO(i8* %83)
  %85 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %86 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = call i32 @mutex_lock(i32* %87)
  %89 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %90 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ASYNC_LOW_LATENCY, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 1, i32 0
  %98 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %99 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %102 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %101, i32 0, i32 3
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @spin_lock_irqsave(i32* %102, i64 %103)
  %105 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %106 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %67
  %110 = load i32, i32* @EBUSY, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %7, align 4
  %112 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %113 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %112, i32 0, i32 3
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %117 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  %119 = call i32 @mutex_unlock(i32* %118)
  br label %166

120:                                              ; preds = %67
  %121 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %122 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %127 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %126, i32 0, i32 3
  %128 = load i64, i64* %9, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %131 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %146

135:                                              ; preds = %120
  %136 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %137 = call i32 @startup(%struct.slgt_info* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %142 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 4
  %144 = call i32 @mutex_unlock(i32* %143)
  br label %166

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %120
  %147 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %148 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 4
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %152 = load %struct.file*, %struct.file** %5, align 8
  %153 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %154 = call i32 @block_til_ready(%struct.tty_struct* %151, %struct.file* %152, %struct.slgt_info* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %146
  %158 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %159 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = call i32 @DBGINFO(i8* %163)
  br label %166

165:                                              ; preds = %146
  store i32 0, i32* %7, align 4
  br label %166

166:                                              ; preds = %165, %157, %140, %109
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %191

169:                                              ; preds = %166
  %170 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %171 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %176 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 3
  store %struct.tty_struct* null, %struct.tty_struct** %177, align 8
  br label %178

178:                                              ; preds = %174, %169
  %179 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %180 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %186 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %184, %178
  br label %191

191:                                              ; preds = %190, %166
  %192 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  %193 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to i8*
  %198 = call i32 @DBGINFO(i8* %197)
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %191, %56, %48, %16
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @DBGERR(i8*) #1

declare dso_local i64 @sanity_check(%struct.slgt_info*, i32, i8*) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @startup(%struct.slgt_info*) #1

declare dso_local i32 @block_til_ready(%struct.tty_struct*, %struct.file*, %struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
