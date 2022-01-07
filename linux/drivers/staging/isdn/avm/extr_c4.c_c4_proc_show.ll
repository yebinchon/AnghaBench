; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_c4.c_c4_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_c4.c_c4_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.capi_ctr* }
%struct.capi_ctr = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i8**, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @c4_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.capi_ctr*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.capi_ctr*, %struct.capi_ctr** %11, align 8
  store %struct.capi_ctr* %12, %struct.capi_ctr** %5, align 8
  %13 = load %struct.capi_ctr*, %struct.capi_ctr** %5, align 8
  %14 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %7, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %52 [
    i32 136, label %43
    i32 135, label %44
    i32 134, label %45
    i32 131, label %46
    i32 130, label %47
    i32 129, label %48
    i32 128, label %49
    i32 132, label %50
    i32 133, label %51
  ]

43:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %53

44:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %53

45:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %53

46:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %53

47:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %9, align 8
  br label %53

48:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8** %9, align 8
  br label %53

49:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  br label %53

50:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** %9, align 8
  br label %53

51:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8** %9, align 8
  br label %53

52:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %53

53:                                               ; preds = %52, %51, %50, %49, %48, %47, %46, %45, %44, %43
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = load i64, i64* @VER_DRIVER, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %64, %53
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = load i64, i64* @VER_CARDTYPE, align 8
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %9, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %76, %68
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = load i64, i64* @VER_SERIAL, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %9, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %80
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 131
  br i1 %96, label %97, label %146

97:                                               ; preds = %92
  %98 = load %struct.capi_ctr*, %struct.capi_ctr** %5, align 8
  %99 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i32*
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %145

107:                                              ; preds = %97
  %108 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %114 = load i32, i32* %8, align 4
  %115 = and i32 %114, 2
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %119 = load i32, i32* %8, align 4
  %120 = and i32 %119, 4
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %124 = load i32, i32* %8, align 4
  %125 = and i32 %124, 8
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %129 = load i32, i32* %8, align 4
  %130 = and i32 %129, 16
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %134 = load i32, i32* %8, align 4
  %135 = and i32 %134, 32
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %139, 64
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %144 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* %113, i8* %118, i8* %123, i8* %128, i8* %133, i8* %138, i8* %143)
  br label %145

145:                                              ; preds = %107, %97
  br label %146

146:                                              ; preds = %145, %92
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 131
  br i1 %150, label %151, label %185

151:                                              ; preds = %146
  %152 = load %struct.capi_ctr*, %struct.capi_ctr** %5, align 8
  %153 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i32*
  %157 = getelementptr inbounds i32, i32* %156, i64 5
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %184

161:                                              ; preds = %151
  %162 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %163 = load i32, i32* %8, align 4
  %164 = and i32 %163, 1
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %168 = load i32, i32* %8, align 4
  %169 = and i32 %168, 2
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %173 = load i32, i32* %8, align 4
  %174 = and i32 %173, 8
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %178 = load i32, i32* %8, align 4
  %179 = and i32 %178, 4
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i64 0, i64 0)
  %183 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %162, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8* %167, i8* %172, i8* %177, i8* %182)
  br label %184

184:                                              ; preds = %161, %151
  br label %185

185:                                              ; preds = %184, %146
  %186 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0), i8* %189)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
