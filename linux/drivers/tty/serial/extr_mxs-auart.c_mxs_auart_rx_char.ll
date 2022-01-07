; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_rx_char.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_rx_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@REG_DATA = common dso_local global i32 0, align 4
@REG_STAT = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@AUART_STAT_BERR = common dso_local global i32 0, align 4
@AUART_STAT_PERR = common dso_local global i32 0, align 4
@AUART_STAT_FERR = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@AUART_STAT_OERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_auart_port*)* @mxs_auart_rx_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_auart_rx_char(%struct.mxs_auart_port* %0) #0 {
  %2 = alloca %struct.mxs_auart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.mxs_auart_port* %0, %struct.mxs_auart_port** %2, align 8
  %6 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %7 = load i32, i32* @REG_DATA, align 4
  %8 = call i8* @mxs_read(%struct.mxs_auart_port* %6, i32 %7)
  store i8* %8, i8** %5, align 8
  %9 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %10 = load i32, i32* @REG_STAT, align 4
  %11 = call i8* @mxs_read(%struct.mxs_auart_port* %9, i32 %10)
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %15 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @AUART_STAT_BERR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %26 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %32 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %31, i32 0, i32 0
  %33 = call i64 @uart_handle_break(%struct.TYPE_6__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %119

36:                                               ; preds = %24
  br label %63

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @AUART_STAT_PERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %44 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %62

49:                                               ; preds = %37
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @AUART_STAT_FERR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %56 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %49
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %36
  %64 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %65 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @AUART_STAT_BERR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* @TTY_BREAK, align 4
  store i32 %75, i32* %3, align 4
  br label %92

76:                                               ; preds = %63
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @AUART_STAT_PERR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @TTY_PARITY, align 4
  store i32 %82, i32* %3, align 4
  br label %91

83:                                               ; preds = %76
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @AUART_STAT_FERR, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @TTY_FRAME, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %83
  br label %91

91:                                               ; preds = %90, %81
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @AUART_STAT_OERR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %99 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %97, %92
  %105 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %106 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %105, i32 0, i32 0
  %107 = load i8*, i8** %5, align 8
  %108 = call i64 @uart_handle_sysrq_char(%struct.TYPE_6__* %106, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %119

111:                                              ; preds = %104
  %112 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %113 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %112, i32 0, i32 0
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @AUART_STAT_OERR, align 4
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @uart_insert_char(%struct.TYPE_6__* %113, i32 %114, i32 %115, i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %111, %110, %35
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %2, align 8
  %122 = load i32, i32* @REG_STAT, align 4
  %123 = call i32 @mxs_write(i32 %120, %struct.mxs_auart_port* %121, i32 %122)
  ret void
}

declare dso_local i8* @mxs_read(%struct.mxs_auart_port*, i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_6__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_6__*, i32, i32, i8*, i32) #1

declare dso_local i32 @mxs_write(i32, %struct.mxs_auart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
