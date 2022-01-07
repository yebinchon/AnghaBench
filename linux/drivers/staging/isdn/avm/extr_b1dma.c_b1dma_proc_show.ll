; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_b1dma.c_b1dma_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_b1dma.c_b1dma_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.capi_ctr* }
%struct.capi_ctr = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i8**, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i32, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"%-16s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%-16s 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%-16s %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%-16s 0x%lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"membase\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"B1 ISA\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"B1 PCI\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"B1 PCMCIA\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"M1\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"M2\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"T1 ISA (HEMA)\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"T1 PCI\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"C4\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"C2\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@VER_DRIVER = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"ver_driver\00", align 1
@VER_CARDTYPE = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [13 x i8] c"ver_cardtype\00", align 1
@VER_SERIAL = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"ver_serial\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"%-16s%s%s%s%s%s%s%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c" DSS1\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [5 x i8] c" CT1\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c" VN3\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c" NI1\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c" AUSTEL\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c" ESS\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c" 1TR6\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"%-16s%s%s%s%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"linetype\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c" point to point\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c" point to multipoint\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c" leased line without D-channel\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c" leased line with D-channel\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"cardname\00", align 1
@AMCC_TXPTR = common dso_local global i32 0, align 4
@AMCC_TXLEN = common dso_local global i32 0, align 4
@AMCC_RXPTR = common dso_local global i32 0, align 4
@AMCC_RXLEN = common dso_local global i32 0, align 4
@AMCC_INTCSR = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [13 x i8] c"csr (cached)\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"csr\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"%-16s %lu\0A\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"txoff\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"txlen\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"rxoff\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"rxlen\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b1dma_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.capi_ctr*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %16, i32 0, i32 0
  %18 = load %struct.capi_ctr*, %struct.capi_ctr** %17, align 8
  store %struct.capi_ctr* %18, %struct.capi_ctr** %5, align 8
  %19 = load %struct.capi_ctr*, %struct.capi_ctr** %5, align 8
  %20 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %6, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %7, align 8
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %58 [
    i32 136, label %49
    i32 135, label %50
    i32 134, label %51
    i32 131, label %52
    i32 130, label %53
    i32 129, label %54
    i32 128, label %55
    i32 132, label %56
    i32 133, label %57
  ]

49:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %59

50:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %59

51:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %59

52:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %59

53:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %9, align 8
  br label %59

54:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8** %9, align 8
  br label %59

55:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  br label %59

56:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** %9, align 8
  br label %59

57:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %9, align 8
  br label %59

58:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %59

59:                                               ; preds = %58, %57, %56, %55, %54, %53, %52, %51, %50, %49
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i64, i64* @VER_DRIVER, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %9, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %59
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = load i64, i64* @VER_CARDTYPE, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %9, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %82, %74
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = load i64, i64* @VER_SERIAL, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %9, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %94, %86
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 131
  br i1 %102, label %103, label %152

103:                                              ; preds = %98
  %104 = load %struct.capi_ctr*, %struct.capi_ctr** %5, align 8
  %105 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i32*
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %151

113:                                              ; preds = %103
  %114 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 1
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, 2
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %125 = load i32, i32* %8, align 4
  %126 = and i32 %125, 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %130 = load i32, i32* %8, align 4
  %131 = and i32 %130, 8
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %135 = load i32, i32* %8, align 4
  %136 = and i32 %135, 16
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, 32
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %145 = load i32, i32* %8, align 4
  %146 = and i32 %145, 64
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %150 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* %119, i8* %124, i8* %129, i8* %134, i8* %139, i8* %144, i8* %149)
  br label %151

151:                                              ; preds = %113, %103
  br label %152

152:                                              ; preds = %151, %98
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 131
  br i1 %156, label %157, label %191

157:                                              ; preds = %152
  %158 = load %struct.capi_ctr*, %struct.capi_ctr** %5, align 8
  %159 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i32*
  %163 = getelementptr inbounds i32, i32* %162, i64 5
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %157
  %168 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %169 = load i32, i32* %8, align 4
  %170 = and i32 %169, 1
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %174 = load i32, i32* %8, align 4
  %175 = and i32 %174, 2
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %179 = load i32, i32* %8, align 4
  %180 = and i32 %179, 8
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %184 = load i32, i32* %8, align 4
  %185 = and i32 %184, 4
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %189 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8* %173, i8* %178, i8* %183, i8* %188)
  br label %190

190:                                              ; preds = %167, %157
  br label %191

191:                                              ; preds = %190, %152
  %192 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i64 %195)
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 6
  %199 = load i64, i64* %15, align 8
  %200 = call i32 @spin_lock_irqsave(i32* %198, i64 %199)
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %202 = load i32, i32* @AMCC_TXPTR, align 4
  %203 = call i64 @b1dma_readl(%struct.TYPE_13__* %201, i32 %202)
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 7
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = sub nsw i64 %203, %209
  store i64 %210, i64* %10, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %212 = load i32, i32* @AMCC_TXLEN, align 4
  %213 = call i64 @b1dma_readl(%struct.TYPE_13__* %211, i32 %212)
  store i64 %213, i64* %11, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %215 = load i32, i32* @AMCC_RXPTR, align 4
  %216 = call i64 @b1dma_readl(%struct.TYPE_13__* %214, i32 %215)
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 7
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = sub nsw i64 %216, %222
  store i64 %223, i64* %12, align 8
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %225 = load i32, i32* @AMCC_RXLEN, align 4
  %226 = call i64 @b1dma_readl(%struct.TYPE_13__* %224, i32 %225)
  store i64 %226, i64* %13, align 8
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %228 = load i32, i32* @AMCC_INTCSR, align 4
  %229 = call i64 @b1dma_readl(%struct.TYPE_13__* %227, i32 %228)
  store i64 %229, i64* %14, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 6
  %232 = load i64, i64* %15, align 8
  %233 = call i32 @spin_unlock_irqrestore(i32* %231, i64 %232)
  %234 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %234, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i64 %237)
  %239 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %240 = load i64, i64* %14, align 8
  %241 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %239, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 %240)
  %242 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %243 = load i64, i64* %10, align 8
  %244 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %242, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i64 %243)
  %245 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %246 = load i64, i64* %11, align 8
  %247 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %245, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0), i64 %246)
  %248 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %249 = load i64, i64* %12, align 8
  %250 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %248, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i64 %249)
  %251 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %252 = load i64, i64* %13, align 8
  %253 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %251, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i64 %252)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @b1dma_readl(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
