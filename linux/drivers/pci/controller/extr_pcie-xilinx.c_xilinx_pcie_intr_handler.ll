; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx.c_xilinx_pcie_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-xilinx.c_xilinx_pcie_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_pcie_port = type { i32, %struct.device* }
%struct.device = type { i32 }

@XILINX_PCIE_REG_IDR = common dso_local global i32 0, align 4
@XILINX_PCIE_REG_IMR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@XILINX_PCIE_INTR_LINK_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Link Down\0A\00", align 1
@XILINX_PCIE_INTR_ECRC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ECRC failed\0A\00", align 1
@XILINX_PCIE_INTR_STR_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Streaming error\0A\00", align 1
@XILINX_PCIE_INTR_HOT_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Hot reset\0A\00", align 1
@XILINX_PCIE_INTR_CFG_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"ECAM access timeout\0A\00", align 1
@XILINX_PCIE_INTR_CORRECTABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Correctable error message\0A\00", align 1
@XILINX_PCIE_INTR_NONFATAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Non fatal error message\0A\00", align 1
@XILINX_PCIE_INTR_FATAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Fatal error message\0A\00", align 1
@XILINX_PCIE_INTR_INTX = common dso_local global i32 0, align 4
@XILINX_PCIE_INTR_MSI = common dso_local global i32 0, align 4
@XILINX_PCIE_REG_RPIFR1 = common dso_local global i32 0, align 4
@XILINX_PCIE_RPIFR1_INTR_VALID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"RP Intr FIFO1 read error\0A\00", align 1
@XILINX_PCIE_RPIFR1_MSI_INTR = common dso_local global i32 0, align 4
@XILINX_PCIE_REG_RPIFR2 = common dso_local global i32 0, align 4
@XILINX_PCIE_RPIFR2_MSG_DATA = common dso_local global i32 0, align 4
@XILINX_PCIE_RPIFR1_INTR_MASK = common dso_local global i32 0, align 4
@XILINX_PCIE_RPIFR1_INTR_SHIFT = common dso_local global i32 0, align 4
@XILINX_PCIE_RPIFR1_ALL_MASK = common dso_local global i32 0, align 4
@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@XILINX_PCIE_INTR_SLV_UNSUPP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Slave unsupported request\0A\00", align 1
@XILINX_PCIE_INTR_SLV_UNEXP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Slave unexpected completion\0A\00", align 1
@XILINX_PCIE_INTR_SLV_COMPL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"Slave completion timeout\0A\00", align 1
@XILINX_PCIE_INTR_SLV_ERRP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"Slave Error Poison\0A\00", align 1
@XILINX_PCIE_INTR_SLV_CMPABT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"Slave Completer Abort\0A\00", align 1
@XILINX_PCIE_INTR_SLV_ILLBUR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"Slave Illegal Burst\0A\00", align 1
@XILINX_PCIE_INTR_MST_DECERR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"Master decode error\0A\00", align 1
@XILINX_PCIE_INTR_MST_SLVERR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"Master slave error\0A\00", align 1
@XILINX_PCIE_INTR_MST_ERRP = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"Master error poison\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xilinx_pcie_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_pcie_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xilinx_pcie_port*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.xilinx_pcie_port*
  store %struct.xilinx_pcie_port* %12, %struct.xilinx_pcie_port** %6, align 8
  %13 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %14 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %13, i32 0, i32 1
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %17 = load i32, i32* @XILINX_PCIE_REG_IDR, align 4
  %18 = call i32 @pcie_read(%struct.xilinx_pcie_port* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %20 = load i32, i32* @XILINX_PCIE_REG_IMR, align 4
  %21 = call i32 @pcie_read(%struct.xilinx_pcie_port* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %235

29:                                               ; preds = %2
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @XILINX_PCIE_INTR_LINK_DOWN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = call i32 @dev_warn(%struct.device* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @XILINX_PCIE_INTR_ECRC_ERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = call i32 @dev_warn(%struct.device* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @XILINX_PCIE_INTR_STR_ERR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = call i32 @dev_warn(%struct.device* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @XILINX_PCIE_INTR_HOT_RESET, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = call i32 @dev_info(%struct.device* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @XILINX_PCIE_INTR_CFG_TIMEOUT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.device*, %struct.device** %7, align 8
  %68 = call i32 @dev_warn(%struct.device* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @XILINX_PCIE_INTR_CORRECTABLE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.device*, %struct.device** %7, align 8
  %76 = call i32 @dev_warn(%struct.device* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %77 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %78 = call i32 @xilinx_pcie_clear_err_interrupts(%struct.xilinx_pcie_port* %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @XILINX_PCIE_INTR_NONFATAL, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.device*, %struct.device** %7, align 8
  %86 = call i32 @dev_warn(%struct.device* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %87 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %88 = call i32 @xilinx_pcie_clear_err_interrupts(%struct.xilinx_pcie_port* %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @XILINX_PCIE_INTR_FATAL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.device*, %struct.device** %7, align 8
  %96 = call i32 @dev_warn(%struct.device* %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %97 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %98 = call i32 @xilinx_pcie_clear_err_interrupts(%struct.xilinx_pcie_port* %97)
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @XILINX_PCIE_INTR_INTX, align 4
  %102 = load i32, i32* @XILINX_PCIE_INTR_MSI, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %156

106:                                              ; preds = %99
  %107 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %108 = load i32, i32* @XILINX_PCIE_REG_RPIFR1, align 4
  %109 = call i32 @pcie_read(%struct.xilinx_pcie_port* %107, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @XILINX_PCIE_RPIFR1_INTR_VALID, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = load %struct.device*, %struct.device** %7, align 8
  %116 = call i32 @dev_warn(%struct.device* %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %229

117:                                              ; preds = %106
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @XILINX_PCIE_RPIFR1_MSI_INTR, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %124 = load i32, i32* @XILINX_PCIE_REG_RPIFR2, align 4
  %125 = call i32 @pcie_read(%struct.xilinx_pcie_port* %123, i32 %124)
  %126 = load i32, i32* @XILINX_PCIE_RPIFR2_MSG_DATA, align 4
  %127 = and i32 %125, %126
  store i32 %127, i32* %8, align 4
  br label %139

128:                                              ; preds = %117
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @XILINX_PCIE_RPIFR1_INTR_MASK, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* @XILINX_PCIE_RPIFR1_INTR_SHIFT, align 4
  %133 = ashr i32 %131, %132
  store i32 %133, i32* %8, align 4
  %134 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %135 = getelementptr inbounds %struct.xilinx_pcie_port, %struct.xilinx_pcie_port* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @irq_find_mapping(i32 %136, i32 %137)
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %128, %122
  %140 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %141 = load i32, i32* @XILINX_PCIE_RPIFR1_ALL_MASK, align 4
  %142 = load i32, i32* @XILINX_PCIE_REG_RPIFR1, align 4
  %143 = call i32 @pcie_write(%struct.xilinx_pcie_port* %140, i32 %141, i32 %142)
  %144 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %145 = call i64 @IS_ENABLED(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %139
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @XILINX_PCIE_RPIFR1_MSI_INTR, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %147, %139
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @generic_handle_irq(i32 %153)
  br label %155

155:                                              ; preds = %152, %147
  br label %156

156:                                              ; preds = %155, %99
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @XILINX_PCIE_INTR_SLV_UNSUPP, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.device*, %struct.device** %7, align 8
  %163 = call i32 @dev_warn(%struct.device* %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %156
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @XILINX_PCIE_INTR_SLV_UNEXP, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.device*, %struct.device** %7, align 8
  %171 = call i32 @dev_warn(%struct.device* %170, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %164
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @XILINX_PCIE_INTR_SLV_COMPL, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load %struct.device*, %struct.device** %7, align 8
  %179 = call i32 @dev_warn(%struct.device* %178, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %172
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @XILINX_PCIE_INTR_SLV_ERRP, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load %struct.device*, %struct.device** %7, align 8
  %187 = call i32 @dev_warn(%struct.device* %186, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %180
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @XILINX_PCIE_INTR_SLV_CMPABT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load %struct.device*, %struct.device** %7, align 8
  %195 = call i32 @dev_warn(%struct.device* %194, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %196

196:                                              ; preds = %193, %188
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* @XILINX_PCIE_INTR_SLV_ILLBUR, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load %struct.device*, %struct.device** %7, align 8
  %203 = call i32 @dev_warn(%struct.device* %202, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201, %196
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @XILINX_PCIE_INTR_MST_DECERR, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load %struct.device*, %struct.device** %7, align 8
  %211 = call i32 @dev_warn(%struct.device* %210, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %204
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* @XILINX_PCIE_INTR_MST_SLVERR, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load %struct.device*, %struct.device** %7, align 8
  %219 = call i32 @dev_warn(%struct.device* %218, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  br label %220

220:                                              ; preds = %217, %212
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @XILINX_PCIE_INTR_MST_ERRP, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load %struct.device*, %struct.device** %7, align 8
  %227 = call i32 @dev_warn(%struct.device* %226, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %228

228:                                              ; preds = %225, %220
  br label %229

229:                                              ; preds = %228, %114
  %230 = load %struct.xilinx_pcie_port*, %struct.xilinx_pcie_port** %6, align 8
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @XILINX_PCIE_REG_IDR, align 4
  %233 = call i32 @pcie_write(%struct.xilinx_pcie_port* %230, i32 %231, i32 %232)
  %234 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %229, %27
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @pcie_read(%struct.xilinx_pcie_port*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @xilinx_pcie_clear_err_interrupts(%struct.xilinx_pcie_port*) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @pcie_write(%struct.xilinx_pcie_port*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
