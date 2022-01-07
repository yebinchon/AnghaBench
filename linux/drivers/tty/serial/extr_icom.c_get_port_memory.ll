; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_get_port_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_icom.c_get_port_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icom_port = type { %struct.TYPE_6__*, i32, i8*, i32, i32, i8*, i8*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i16, i8*, i8*, i64 }
%struct.TYPE_8__ = type { i16, i8* }
%struct.TYPE_5__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Can not allocate Transmit buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"GET_PORT_MEM\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Can not allocate Receive buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Can not allocate Status buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Can not allocate xmit Restart buffer\0A\00", align 1
@NUM_XBUFFS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"FOD_ADDR\00", align 1
@XMIT_BUFF_SZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"FOD_XBUFF\00", align 1
@NUM_RBUFFS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"FID_ADDR\00", align 1
@RCV_BUFF_SZ = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"FID_RBUFF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icom_port*)* @get_port_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_port_memory(%struct.icom_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icom_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.icom_port* %0, %struct.icom_port** %3, align 8
  %9 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %10 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %9, i32 0, i32 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %8, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %15 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %16 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %15, i32 0, i32 4
  %17 = call i8* @pci_alloc_consistent(%struct.pci_dev* %14, i32 4096, i32* %16)
  %18 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %19 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %18, i32 0, i32 5
  store i8* %17, i8** %19, align 8
  %20 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %21 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %20, i32 0, i32 5
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %385

30:                                               ; preds = %1
  %31 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %32 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %33 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %32, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = call i32 @trace(%struct.icom_port* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %38 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %39 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %38, i32 0, i32 1
  %40 = call i8* @pci_alloc_consistent(%struct.pci_dev* %37, i32 4096, i32* %39)
  %41 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %42 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %44 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %30
  %48 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %52 = call i32 @free_port_memory(%struct.icom_port* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %385

55:                                               ; preds = %30
  %56 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %57 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %58 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = ptrtoint i8* %59 to i64
  %61 = call i32 @trace(%struct.icom_port* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %63 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %64 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %63, i32 0, i32 3
  %65 = call i8* @pci_alloc_consistent(%struct.pci_dev* %62, i32 4096, i32* %64)
  %66 = bitcast i8* %65 to %struct.TYPE_6__*
  %67 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %68 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %67, i32 0, i32 0
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %68, align 8
  %69 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %70 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = icmp ne %struct.TYPE_6__* %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %55
  %74 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %78 = call i32 @free_port_memory(%struct.icom_port* %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %385

81:                                               ; preds = %55
  %82 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %83 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %84 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = ptrtoint %struct.TYPE_6__* %85 to i64
  %87 = call i32 @trace(%struct.icom_port* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %86)
  %88 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %89 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %90 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %89, i32 0, i32 7
  %91 = call i8* @pci_alloc_consistent(%struct.pci_dev* %88, i32 4096, i32* %90)
  %92 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %93 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %92, i32 0, i32 6
  store i8* %91, i8** %93, align 8
  %94 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %95 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %94, i32 0, i32 6
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %81
  %99 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %102 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %103 = call i32 @free_port_memory(%struct.icom_port* %102)
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %385

106:                                              ; preds = %81
  %107 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %108 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = ptrtoint %struct.TYPE_6__* %109 to i64
  store i64 %110, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %227, %106
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @NUM_XBUFFS, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %230

115:                                              ; preds = %111
  %116 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @trace(%struct.icom_port* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 %117)
  %119 = load i64, i64* %5, align 8
  %120 = add i64 %119, 16
  store i64 %120, i64* %5, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @NUM_XBUFFS, align 4
  %123 = sub nsw i32 %122, 1
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %169

125:                                              ; preds = %115
  %126 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %127 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %132
  %134 = call i32 @memset(%struct.TYPE_8__* %133, i32 0, i32 4)
  %135 = load i32, i32* @XMIT_BUFF_SZ, align 4
  %136 = call i64 @cpu_to_le16(i32 %135)
  %137 = trunc i64 %136 to i16
  %138 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %139 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %138, i32 0, i32 0
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i16 %137, i16* %146, align 8
  %147 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %148 = load i64, i64* %5, align 8
  %149 = call i32 @trace(%struct.icom_port* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 %148)
  %150 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %151 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %152 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %151, i32 0, i32 5
  %153 = load i8*, i8** %152, align 8
  %154 = ptrtoint i8* %153 to i64
  %155 = call i32 @trace(%struct.icom_port* %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %154)
  %156 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %157 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @cpu_to_le32(i32 %158)
  %160 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %161 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  store i8* %159, i8** %168, align 8
  br label %226

169:                                              ; preds = %115
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @NUM_XBUFFS, align 4
  %172 = sub nsw i32 %171, 1
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %174, label %215

174:                                              ; preds = %169
  %175 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %176 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i64 %181
  %183 = call i32 @memset(%struct.TYPE_8__* %182, i32 0, i32 4)
  %184 = load i32, i32* @XMIT_BUFF_SZ, align 4
  %185 = call i64 @cpu_to_le16(i32 %184)
  %186 = trunc i64 %185 to i16
  %187 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %188 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %187, i32 0, i32 0
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  store i16 %186, i16* %195, align 8
  %196 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %197 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %198 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %197, i32 0, i32 5
  %199 = load i8*, i8** %198, align 8
  %200 = ptrtoint i8* %199 to i64
  %201 = call i32 @trace(%struct.icom_port* %196, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %200)
  %202 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %203 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = call i8* @cpu_to_le32(i32 %204)
  %206 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %207 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %206, i32 0, i32 0
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = load i32, i32* %4, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  store i8* %205, i8** %214, align 8
  br label %225

215:                                              ; preds = %169
  %216 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %217 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %216, i32 0, i32 0
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = load i32, i32* %4, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i64 %222
  %224 = call i32 @memset(%struct.TYPE_8__* %223, i32 0, i32 4)
  br label %225

225:                                              ; preds = %215, %174
  br label %226

226:                                              ; preds = %225, %125
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %4, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %4, align 4
  br label %111

230:                                              ; preds = %111
  %231 = load i64, i64* %5, align 8
  store i64 %231, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %232

232:                                              ; preds = %381, %230
  %233 = load i32, i32* %4, align 4
  %234 = load i32, i32* @NUM_RBUFFS, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %384

236:                                              ; preds = %232
  %237 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %238 = load i64, i64* %5, align 8
  %239 = call i32 @trace(%struct.icom_port* %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 %238)
  %240 = load i64, i64* %5, align 8
  %241 = add i64 %240, 32
  store i64 %241, i64* %5, align 8
  %242 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %243 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %242, i32 0, i32 0
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = load i32, i32* %4, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 3
  store i64 0, i64* %250, align 8
  %251 = load i32, i32* @RCV_BUFF_SZ, align 4
  %252 = call i64 @cpu_to_le16(i32 %251)
  %253 = trunc i64 %252 to i16
  %254 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %255 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %254, i32 0, i32 0
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = load i32, i32* %4, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  store i16 %253, i16* %262, align 8
  %263 = load i32, i32* %4, align 4
  %264 = load i32, i32* @NUM_RBUFFS, align 4
  %265 = sub nsw i32 %264, 1
  %266 = icmp slt i32 %263, %265
  br i1 %266, label %267, label %310

267:                                              ; preds = %236
  %268 = load i64, i64* %5, align 8
  %269 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %270 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %269, i32 0, i32 0
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = ptrtoint %struct.TYPE_6__* %271 to i64
  %273 = sub i64 %268, %272
  store i64 %273, i64* %7, align 8
  %274 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %275 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = load i64, i64* %7, align 8
  %279 = add i64 %277, %278
  %280 = trunc i64 %279 to i32
  %281 = call i8* @cpu_to_le32(i32 %280)
  %282 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %283 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %282, i32 0, i32 0
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %285, align 8
  %287 = load i32, i32* %4, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 2
  store i8* %281, i8** %290, align 8
  %291 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %292 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %293 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %292, i32 0, i32 2
  %294 = load i8*, i8** %293, align 8
  %295 = ptrtoint i8* %294 to i64
  %296 = call i32 @trace(%struct.icom_port* %291, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 %295)
  %297 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %298 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = call i8* @cpu_to_le32(i32 %299)
  %301 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %302 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %301, i32 0, i32 0
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %304, align 8
  %306 = load i32, i32* %4, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 1
  store i8* %300, i8** %309, align 8
  br label %380

310:                                              ; preds = %236
  %311 = load i32, i32* %4, align 4
  %312 = load i32, i32* @NUM_RBUFFS, align 4
  %313 = sub nsw i32 %312, 1
  %314 = icmp eq i32 %311, %313
  br i1 %314, label %315, label %360

315:                                              ; preds = %310
  %316 = load i64, i64* %6, align 8
  %317 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %318 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %317, i32 0, i32 0
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %318, align 8
  %320 = ptrtoint %struct.TYPE_6__* %319 to i64
  %321 = sub i64 %316, %320
  store i64 %321, i64* %7, align 8
  %322 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %323 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = sext i32 %324 to i64
  %326 = load i64, i64* %7, align 8
  %327 = add i64 %325, %326
  %328 = trunc i64 %327 to i32
  %329 = call i8* @cpu_to_le32(i32 %328)
  %330 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %331 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %330, i32 0, i32 0
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %333, align 8
  %335 = load i32, i32* %4, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 2
  store i8* %329, i8** %338, align 8
  %339 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %340 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %341 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %340, i32 0, i32 2
  %342 = load i8*, i8** %341, align 8
  %343 = ptrtoint i8* %342 to i64
  %344 = add i64 %343, 2048
  %345 = call i32 @trace(%struct.icom_port* %339, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 %344)
  %346 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %347 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = add nsw i32 %348, 2048
  %350 = call i8* @cpu_to_le32(i32 %349)
  %351 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %352 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %351, i32 0, i32 0
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %354, align 8
  %356 = load i32, i32* %4, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 1
  store i8* %350, i8** %359, align 8
  br label %379

360:                                              ; preds = %310
  %361 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %362 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %361, i32 0, i32 0
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %364, align 8
  %366 = load i32, i32* %4, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 2
  store i8* null, i8** %369, align 8
  %370 = load %struct.icom_port*, %struct.icom_port** %3, align 8
  %371 = getelementptr inbounds %struct.icom_port, %struct.icom_port* %370, i32 0, i32 0
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %373, align 8
  %375 = load i32, i32* %4, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 1
  store i8* null, i8** %378, align 8
  br label %379

379:                                              ; preds = %360, %315
  br label %380

380:                                              ; preds = %379, %267
  br label %381

381:                                              ; preds = %380
  %382 = load i32, i32* %4, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %4, align 4
  br label %232

384:                                              ; preds = %232
  store i32 0, i32* %2, align 4
  br label %385

385:                                              ; preds = %384, %98, %73, %47, %24
  %386 = load i32, i32* %2, align 4
  ret i32 %386
}

declare dso_local i8* @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @trace(%struct.icom_port*, i8*, i64) #1

declare dso_local i32 @free_port_memory(%struct.icom_port*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
