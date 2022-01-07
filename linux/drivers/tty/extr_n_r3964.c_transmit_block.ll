; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_transmit_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_transmit_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_info = type { i64, i32, i64, i32, i32, %struct.r3964_block_header*, %struct.tty_struct* }
%struct.r3964_block_header = type { i64, i64* }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"transmit_block %p, room %d, length %d\00", align 1
@DLE = common dso_local global i64 0, align 8
@ETX = common dso_local global i64 0, align 8
@R3964_BCC = common dso_local global i32 0, align 4
@R3964_WAIT_FOR_TX_ACK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@R3964_TO_QVZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r3964_info*)* @transmit_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_block(%struct.r3964_info* %0) #0 {
  %2 = alloca %struct.r3964_info*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.r3964_block_header*, align 8
  %5 = alloca i32, align 4
  store %struct.r3964_info* %0, %struct.r3964_info** %2, align 8
  %6 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %7 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %6, i32 0, i32 6
  %8 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  store %struct.tty_struct* %8, %struct.tty_struct** %3, align 8
  %9 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %10 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %9, i32 0, i32 5
  %11 = load %struct.r3964_block_header*, %struct.r3964_block_header** %10, align 8
  store %struct.r3964_block_header* %11, %struct.r3964_block_header** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %13 = icmp eq %struct.tty_struct* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %16 = icmp eq %struct.r3964_block_header* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %1
  br label %111

18:                                               ; preds = %14
  %19 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %20 = call i32 @tty_write_room(%struct.tty_struct* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %24 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @TRACE_PS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.r3964_block_header* %21, i32 %22, i64 %25)
  br label %27

27:                                               ; preds = %54, %18
  %28 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %29 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %32 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %68

39:                                               ; preds = %35
  %40 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %41 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %44 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DLE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %52 = load i64, i64* @DLE, align 8
  %53 = call i32 @put_char(%struct.r3964_info* %51, i64 %52)
  br label %54

54:                                               ; preds = %50, %39
  %55 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %56 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %57 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %60 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = getelementptr inbounds i64, i64* %58, i64 %61
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @put_char(%struct.r3964_info* %55, i64 %64)
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %5, align 4
  br label %27

68:                                               ; preds = %38, %27
  %69 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %70 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.r3964_block_header*, %struct.r3964_block_header** %4, align 8
  %73 = getelementptr inbounds %struct.r3964_block_header, %struct.r3964_block_header* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %108

76:                                               ; preds = %68
  %77 = load i32, i32* %5, align 4
  %78 = icmp sge i32 %77, 3
  br i1 %78, label %79, label %108

79:                                               ; preds = %76
  %80 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %81 = load i64, i64* @DLE, align 8
  %82 = call i32 @put_char(%struct.r3964_info* %80, i64 %81)
  %83 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %84 = load i64, i64* @ETX, align 8
  %85 = call i32 @put_char(%struct.r3964_info* %83, i64 %84)
  %86 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %87 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @R3964_BCC, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %79
  %93 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %94 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %95 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @put_char(%struct.r3964_info* %93, i64 %96)
  br label %98

98:                                               ; preds = %92, %79
  %99 = load i32, i32* @R3964_WAIT_FOR_TX_ACK, align 4
  %100 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %101 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %103 = getelementptr inbounds %struct.r3964_info, %struct.r3964_info* %102, i32 0, i32 3
  %104 = load i64, i64* @jiffies, align 8
  %105 = load i64, i64* @R3964_TO_QVZ, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @mod_timer(i32* %103, i64 %106)
  br label %108

108:                                              ; preds = %98, %76, %68
  %109 = load %struct.r3964_info*, %struct.r3964_info** %2, align 8
  %110 = call i32 @flush(%struct.r3964_info* %109)
  br label %111

111:                                              ; preds = %108, %17
  ret void
}

declare dso_local i32 @tty_write_room(%struct.tty_struct*) #1

declare dso_local i32 @TRACE_PS(i8*, %struct.r3964_block_header*, i32, i64) #1

declare dso_local i32 @put_char(%struct.r3964_info*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @flush(%struct.r3964_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
